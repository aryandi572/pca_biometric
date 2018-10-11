function CellKeMat(Data1D)
%% Mencari Tinggi Dan Lebar Cell
[JumlahKelas JumlahPose]= size(Data1D);
%% Initial Matrik
TrainImageInMat = [];
%% Mengubah Cell To Matrik
for Kelas= 1:JumlahKelas
    for Pose =1:JumlahPose
        Temp = Data1D{Kelas, Pose};
        TrainImageInMat = [TrainImageInMat; Temp];
    end
end
TrainImageInMat = double(TrainImageInMat)
%% Simpan hasil
save TrainImageInMat TrainImageInMat
end