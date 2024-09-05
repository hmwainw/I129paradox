
x = categorical({'La Hague'; 'Sellafield'; 'SRS'; 'Hanford'},{'La Hague'; 'Sellafield'; 'SRS'; 'Hanford'});
y = [213, 36.6, 11.3/33, 26.6/45]';
z = [1.29E-01,	4.59,	82.1, 4.47E-04]';
nil = [0,0,0,0]';

figure('Position',[100 100 600 400])
    
yyaxis left
bar(x, [y nil], 'grouped')
set(gca,'YScale','Log')
set(gca,'FontSize',16)

ylabel('Average annual I-129 release (kg/yr)');
yyaxis right
bar(x, [nil z], 'grouped')
hold on; yline(5.66,'r','LineWidth',2)
ylabel('Max. surface water concentrations (ng/L)');
set(gca,'YScale','Log')
set(gca,'FontSize',16)
grid on

saveas(gcf,'discharge_conc.png')

