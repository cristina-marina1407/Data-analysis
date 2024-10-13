function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
	% obtinem dimensiunea vectorului probabilities
	n = length(probabilities);
	predictions = zeros(1, n);

	% initializam cu 0 variabilele
	best_epsilon = 0;
	best_F1 = 0;
	associated_precision = 0;
	associated_recall = 0;

	% determinam minimul si maximul
	minim = min(probabilities);
	maxim = max(probabilities);

	step = (maxim - minim) / 1000;

	% epsilon ia valori de la minim la maxim cu pasul step
	for epsilon = minim:step:maxim
		for i = 1:n
			if probabilities(i) < epsilon
				predictions(i) = 1;
			endif
		endfor
		
		% apelam functiile check_predictions si metrics pentru a gasi cel mai bun epsilon
		[false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);
		[precision, recall, F1] = metrics(true_pozitives, false_pozitives, false_negatives);

		if F1 > best_F1
		% actualizam valorile la fiecare iteratie pana gasim valorile cele mai optime
			best_F1 = F1
			best_epsilon = epsilon
			associated_precision = precision;
			associated_recall = recall;
		endif
	endfor
endfunction
