alpha_range=900;
lamda=302:alpha_range;
alpha_CdTe=alpha_functionCdTe(lamda);
plot(lamda,alpha_CdTe);
hold on