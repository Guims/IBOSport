.class public Lib/player/models/Episode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private container_extension:Ljava/lang/String;

.field private episode_num:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private info:Ljava/lang/Object;

.field private season:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer_extension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/Episode;->container_extension:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisode_num()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/Episode;->episode_num:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/Episode;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lib/player/models/Episode;->info:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeason()I
    .locals 1

    iget v0, p0, Lib/player/models/Episode;->season:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/Episode;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContainer_extension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/Episode;->container_extension:Ljava/lang/String;

    return-void
.end method

.method public setEpisode_num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/Episode;->episode_num:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/Episode;->id:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/Episode;->info:Ljava/lang/Object;

    return-void
.end method

.method public setSeason(I)V
    .locals 0

    iput p1, p0, Lib/player/models/Episode;->season:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/Episode;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Episode{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/models/Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', episode_num=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/Episode;->episode_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/Episode;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', container_extension=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/Episode;->container_extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', season="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lib/player/models/Episode;->season:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/Episode;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
