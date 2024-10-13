function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
	% obtinem dimensiunea vectorului predictions 
	n = length(predictions);

	% initializam cu 0 variabilele
	false_pozitives = 0;
	false_negatives = 0;
	true_pozitives = 0;
	
	for i = 1:n
		% crestem true_pozitives daca si predictions si truths de i sunt diferite de 0
		if predictions(i) && truths(i)
			true_pozitives = true_pozitives + 1;
		endif
		% crestem false_pozitives daca predictions este 1 si truths este 0
		if predictions(i) && ~truths(i)
			false_pozitives = false_pozitives + 1;
		endif
		% crestem false_negatives daca si predictions si truths de i sunt 0
		if ~predictions(i) && truths(i)
			false_negatives = false_negatives + 1;
		endif
	endfor    
endfunction