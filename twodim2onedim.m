function twodim2onedim(NamaFile)

[JumlahKelas JumlahPose] = size(NamaFile)
[H W] = size(NamaFile{1,1})
for Kelas=1:JumlahKelas
    for Pose=1:JumlahPose
        Citra = NamaFile{Kelas,Pose};
        Citra1D = reshape(Citra,[1 H*W]);
        Hasil1D{Kelas,Pose} = Citra1D 
    end
end
save Hasil1D Hasil1D    
end
