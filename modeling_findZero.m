function coords = modeling_findZero(G)
    [r, c] = find(G==0);
    coords = [r, c];
end