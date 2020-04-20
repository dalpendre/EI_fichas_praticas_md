function y = is_reflexiva(M)

	[L,C]=size(M)
	//size
	for i=1:L
		for j=1:C
			if M(i,j) ≃ M(j,i)
				y=%f;
				break
			end
		end
	end

	if y == %f
		break
	end

endfunction

MS=[1 1 1 0; 1 0 1 0; 1 1 0 0; 0 0 0 1]
