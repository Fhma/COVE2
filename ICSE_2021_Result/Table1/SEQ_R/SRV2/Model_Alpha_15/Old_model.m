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
 
   figure



% C = {'k','b','r','g','y',[.5 .6 .7],[.8 .2 .6]} % Cell array of colros.
% x = 0:.01:1;
% hold on


% for ii=1:7
%    h = plot(digraph(P),'LineWidth',2, 'MarkerSize',10,'ArrowSize',18,'NodeFontSize',18);
%     
% end
h = plot(digraph(P),'LineWidth',2, 'MarkerSize',10,'ArrowSize',18,'NodeFontSize',18);

% h = plot(digraph(P),'LineWidth',2, 'MarkerSize',10,'ArrowSize',18,'NodeFontSize',18);

% labelnode(h,1:23,{'0' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12' '13' '14' '15' '16' '17' '18' '19' '20' '21' '22'});
% labelnode(h,1:45,{'0' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12' '13' '14' '15' '16' '17' '18' '19' '20' '21' '22' '23' '24' '25' '26' '27' '28' '29' '30' '31' '32' '33' '34' '35' '36' '37' '38' '39' '40' '41' '42' '43' '44'});
%  labelnode(h,1:26,{'0' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12' '13' '14' '15' '16' '17' '18' '19' '20' '21' '22' '23' '24' '25' });

        layout(h,'layered');
        set(gca,'XDir','reverse');
        camroll(90)