function [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives)
	% initializam cu 0 variabilele
	precision = 0;
	recall = 0;
	F1 = 0;

	% precision reprezinta procentajul oulierilor adevarati si determinati
	% din total_pozitives = true_pozitives + false_pozitives
	precision = true_pozitives / (true_pozitives + false_pozitives);

	% recall reprezinta procentajul oulierilor adevarati si determinati
	% din totalul outlierilor reali = true_pozitives + false_negatives
	recall = true_pozitives / (true_pozitives + false_negatives);
	
	% paramterul F1 duce la determinarea celui mai bun epsilon
	F1 = (2 * precision * recall) / (precision + recall);
endfunction