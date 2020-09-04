clc;clear;close all

%%%%%%%%%%%%%%%%%%%%COPY content in new_model.m or old_model.m HERE%%%%%%%%%%%%%
%%%%%%COPY START%%%%%%%%%%%%
P = sparse(29,29); 
 P(1,2)=1; 
 P(1,5)=1; 
 P(2,3)=1; 
 P(2,17)=1; 
 P(3,8)=1; 
 P(3,18)=1; 
 P(4,7)=1; 
 P(4,19)=1; 
 P(5,9)=1; 
 P(5,20)=1; 
 P(6,7)=1; 
 P(6,21)=1; 
 P(7,10)=1; 
 P(7,22)=1; 
 P(8,2)=1; 
 P(8,4)=1; 
 P(8,6)=1; 
 P(9,1)=1; 
 P(9,5)=1; 
 P(9,6)=1; 
 P(10,1)=1; 
 P(11,10)=1; 
 P(11,24)=1; 
 P(12,7)=1; 
 P(12,25)=1; 
 P(13,9)=1; 
 P(13,26)=1; 
 P(14,7)=1; 
 P(14,27)=1; 
 P(15,8)=1; 
 P(15,28)=1; 
 P(16,3)=1; 
 P(16,29)=1; 
 P(17,2)=1; 
 P(17,16)=1; 
 P(18,3)=1; 
 P(18,15)=1; 
 P(19,4)=1; 
 P(19,14)=1; 
 P(20,5)=1; 
 P(20,13)=1; 
 P(21,6)=1; 
 P(21,12)=1; 
 P(22,7)=1; 
 P(22,11)=1; 
 P(23,23)=1; 
 P(24,11)=1; 
 P(24,23)=1; 
 P(25,12)=1; 
 P(25,23)=1; 
 P(26,13)=1; 
 P(26,23)=1; 
 P(27,14)=1; 
 P(27,23)=1; 
 P(28,15)=1; 
 P(28,23)=1; 
 P(29,16)=1; 
 P(29,23)=1; 
 
 fragment = [ 0 0 0 0 0 0 0 0 0 38 0 0 0 0 0 0 0 0 0 0 0 0 51 0 0 0 0 0 0];
%%%%%%COPY END%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%COPY content in new_model.m or old_model.m HERE%%%%%%%%%%%%%


 
%% Plot the structure of the Model and use color to differeciate different fragment
 
stand_color = {[0,0,0],[1,0,0],[0, 0.4470, 0.7410],[0.8500, 0.3250, 0.0980],[0.9290, 0.6940, 0.1250],[0.4940, 0.1840, 0.5560],[0.3010, 0.7450, 0.9330],[0.6350, 0.0780, 0.1840],[0, 0, 1],	[0, 0.5, 0],[1, 0, 0],[0, 0.75, 0.75],	[0.75, 0, 0.75],[0.75, 0.75, 0],[0.25, 0.25, 0.25]};

number_of_states = unique(fragment);

for i = 1:size(number_of_states,2)
    for j = 1:size(fragment,2)
        if (fragment(j)==number_of_states(i))
            fragment(j) = i;
        end
    end
end

clour_matrix    = zeros(size(number_of_states,2),3);
fragment_colour = zeros(size(fragment,2),3);

for k = 1:size(number_of_states,2)
    clour_matrix(k,1) = rand(1,1);
    clour_matrix(k,2) = rand(1,1);
    clour_matrix(k,3) = rand(1,1);
end

for k = 1:size(fragment,2)
    if (fragment(k)<=size(stand_color,2))
        fragment_colour(k,1) = stand_color{1,fragment(k)}(1);
        fragment_colour(k,2) = stand_color{1,fragment(k)}(2);
        fragment_colour(k,3) = stand_color{1,fragment(k)}(3);
    else
        fragment_colour(k,1) = clour_matrix(fragment(k),1);
        fragment_colour(k,2) = clour_matrix(fragment(k),2);
        fragment_colour(k,3) = clour_matrix(fragment(k),3);
    end
end  


f=figure;
h = plot(digraph(P),'LineWidth',1, 'MarkerSize',7,'ArrowSize',8,'NodeFontSize',12,'NodeColor',fragment_colour,'EdgeColor',[0,0,0],'EdgeAlpha',0.8);
layout(h,'layered');
set(gca,'XDir','reverse');
camroll(90)
