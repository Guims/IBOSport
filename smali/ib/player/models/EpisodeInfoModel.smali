.class public Lib/player/models/EpisodeInfoModel;
.super Lio/realm/O;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bitrate:I
    .annotation runtime Lm4/b;
        value = "bitrate"
    .end annotation
.end field

.field private duration:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "duration"
    .end annotation
.end field

.field private duration_secs:I
    .annotation runtime Lm4/b;
        value = "duration_secs"
    .end annotation
.end field

.field private movie_image:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "movie_image"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "name"
    .end annotation
.end field

.field private plot:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "plot"
    .end annotation
.end field

.field private rating:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "rating"
    .end annotation
.end field

.field private releasedate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "air_date"
    .end annotation
.end field

.field tmdb_id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "tmdb_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$bitrate()I

    move-result v0

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$duration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration_secs()I
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$duration_secs()I

    move-result v0

    return v0
.end method

.method public getMovie_image()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$movie_image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlot()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$plot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()F
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$rating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReleasedate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$releasedate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeInfoModel;->realmGet$tmdb_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$bitrate()I
    .locals 1

    iget v0, p0, Lib/player/models/EpisodeInfoModel;->bitrate:I

    return v0
.end method

.method public realmGet$duration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeInfoModel;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$duration_secs()I
    .locals 1

    iget v0, p0, Lib/player/models/EpisodeInfoModel;->duration_secs:I

    return v0
.end method

.method public realmGet$movie_image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeInfoModel;->movie_image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeInfoModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$plot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeInfoModel;->plot:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$rating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeInfoModel;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$releasedate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeInfoModel;->releasedate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tmdb_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeInfoModel;->tmdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$bitrate(I)V
    .locals 0

    iput p1, p0, Lib/player/models/EpisodeInfoModel;->bitrate:I

    return-void
.end method

.method public realmSet$duration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeInfoModel;->duration:Ljava/lang/String;

    return-void
.end method

.method public realmSet$duration_secs(I)V
    .locals 0

    iput p1, p0, Lib/player/models/EpisodeInfoModel;->duration_secs:I

    return-void
.end method

.method public realmSet$movie_image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeInfoModel;->movie_image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeInfoModel;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$plot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeInfoModel;->plot:Ljava/lang/String;

    return-void
.end method

.method public realmSet$rating(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeInfoModel;->rating:Ljava/lang/String;

    return-void
.end method

.method public realmSet$releasedate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeInfoModel;->releasedate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tmdb_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeInfoModel;->tmdb_id:Ljava/lang/String;

    return-void
.end method

.method public setMovie_image(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeInfoModel;->realmSet$movie_image(Ljava/lang/String;)V

    return-void
.end method

.method public setPlot(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeInfoModel;->realmSet$plot(Ljava/lang/String;)V

    return-void
.end method

.method public setTmdb_id(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeInfoModel;->realmSet$tmdb_id(Ljava/lang/String;)V

    return-void
.end method
