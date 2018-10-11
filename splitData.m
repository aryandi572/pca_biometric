function splitData(File1D,PoseWanted)
[H W] = size(File1D)
Urutan = randperm(W)

DataTraining = File1D(1:end,1:PoseWanted);
DataTesting = File1D(1:end,PoseWanted+1:end);
save DataTraining DataTraining
save DataTesting DataTesting

end
