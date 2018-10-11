function ImgToMat(JumlahFolder,JumlahPose,MyFolder)

Hasil {JumlahFolder,JumlahPose} = 0;
for Folder = 1:JumlahFolder
    FolderSaya = num2str(Folder);
    for Pose= 1:JumlahPose
        LokFolder = [MyFolder FolderSaya]
        Urutan = num2str(Pose);
        Data = imread([LokFolder '\' Urutan '.pgm']);
        Hasil{Folder,Pose} = Data;
    end
end

save Hasil Hasil
end