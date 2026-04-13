.class public Lib/player/models/InfoSerie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/player/models/InfoSerie$Info;
    }
.end annotation


# instance fields
.field episodes:Lib/player/models/ListEpisode;
    .annotation runtime Lm4/b;
        value = "episodes"
    .end annotation
.end field

.field info:Lib/player/models/InfoSerie$Info;
    .annotation runtime Lm4/b;
        value = "info"
    .end annotation
.end field

.field seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lib/player/models/Season;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm4/b;
        value = "seasons"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lib/player/models/InfoSerie;->seasons:Ljava/util/List;

    new-instance v0, Lib/player/models/ListEpisode;

    invoke-direct {v0}, Lib/player/models/ListEpisode;-><init>()V

    iput-object v0, p0, Lib/player/models/InfoSerie;->episodes:Lib/player/models/ListEpisode;

    new-instance v0, Lib/player/models/InfoSerie$Info;

    invoke-direct {v0}, Lib/player/models/InfoSerie$Info;-><init>()V

    iput-object v0, p0, Lib/player/models/InfoSerie;->info:Lib/player/models/InfoSerie$Info;

    return-void
.end method


# virtual methods
.method public getEpisodes()Lib/player/models/ListEpisode;
    .locals 1

    iget-object v0, p0, Lib/player/models/InfoSerie;->episodes:Lib/player/models/ListEpisode;

    return-object v0
.end method

.method public getInfo()Lib/player/models/InfoSerie$Info;
    .locals 1

    iget-object v0, p0, Lib/player/models/InfoSerie;->info:Lib/player/models/InfoSerie$Info;

    return-object v0
.end method

.method public getSeasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lib/player/models/Season;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lib/player/models/InfoSerie;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public setEpisodes(Lib/player/models/ListEpisode;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/InfoSerie;->episodes:Lib/player/models/ListEpisode;

    return-void
.end method

.method public setInfo(Lib/player/models/InfoSerie$Info;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/InfoSerie;->info:Lib/player/models/InfoSerie$Info;

    return-void
.end method

.method public setSeasons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lib/player/models/Season;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lib/player/models/InfoSerie;->seasons:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InfoSerie{seasons="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/models/InfoSerie;->seasons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "episodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/InfoSerie;->episodes:Lib/player/models/ListEpisode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
