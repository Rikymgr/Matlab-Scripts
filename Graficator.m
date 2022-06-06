function [] = Graficator(asse_x,asse_y)
% Function che fa dei grafici decenti:
% I vettori di input devono essere del tipo asse_x = [x1; x2; x3; ...] allo
% stesso modo per y. I vettori x1 x2 x3... sono quelli dei vari plot.
%
% Ulteriori parti del grafico, come freccie, riquadri ecc... devono essere
% aggiunti da editor nella finestra del Plot



plot([0],[0])                                    % Grafico vuoto per inizializzare la figura 
clf                                              % Pulisci Figura

prompt1 = "Titolo del Grafico: ";                % Messaggio dell'input
titolo = input(prompt1,'s');                     % Chiede il Titolo della Figura
title(titolo,'FontSize',20,'FontWeight','bold')  % Imposta il titolo 

prompt2 = "Nome asse X: ";
nome_x = input(prompt2,'s');
xlabel(nome_x,'FontSize',12,'FontWeight','bold') % Imposta l'asse delle X

prompt3 = "Nome asse Y: ";
nome_y = input(prompt3,'s');
ylabel(nome_y,'FontSize',12,'FontWeight','bold') % Imposta l'asse delle Y

hold on
for i = [1:length(asse_x(:,1))]
    
    list_name_c = {'Black','Red','Green','Blue','Cyan','Magenta','Yello','White'};
    list_simblos_c = ["k","r","g","b","c","m","y","w"];
    list_name_s = {'Solid','Dashed','Dotted','Dash-Dotted'};
    list_simblos_s = ["-","--",":","-."];

    [ind_c] = listdlg('ListString',list_name_c);
    [ind_s] = listdlg('ListString',list_name_s);
    flag = list_simblos_s(ind_s) + list_simblos_c(ind_c);
    plot(asse_x(i,:),asse_y(i,:),flag,'LineWidth',3)            % Fa il plot del del grafico
    
    
end
legend                       % Legenda anonima (più facile modificarla dall'editor) 
pbaspect([1 1 1])            % Il grafico è in un riquadro perfettamente quadrato
set(gca,'Color','w')         % Sfondo bianco 

hold off
end