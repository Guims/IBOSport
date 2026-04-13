.class public Lib/player/models/MovieInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field info:Lib/player/models/MovieInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lib/player/models/MovieInfo;
    .locals 1

    iget-object v0, p0, Lib/player/models/MovieInfoResponse;->info:Lib/player/models/MovieInfo;

    return-object v0
.end method

.method public setInfo(Lib/player/models/MovieInfo;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/MovieInfoResponse;->info:Lib/player/models/MovieInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MovieInfoResponse{info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/models/MovieInfoResponse;->info:Lib/player/models/MovieInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
