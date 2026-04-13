.class public Lib/player/models/EpisodeModel;
.super Lio/realm/O;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private category_name:Ljava/lang/String;

.field private container_extension:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "container_extension"
    .end annotation
.end field

.field private episode_num:Ljava/lang/String;

.field private id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "id"
    .end annotation
.end field

.field private info_model:Lib/player/models/EpisodeInfoModel;

.field private season:I
    .annotation runtime Lm4/b;
        value = "season"
    .end annotation
.end field

.field private season_name:Ljava/lang/String;

.field private series_name:Ljava/lang/String;

.field private stream_icon:Ljava/lang/String;

.field private title:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "title"
    .end annotation
.end field

.field private url:Ljava/lang/String;


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

.method public static fromM3UItem(LQ4/a;)Lib/player/models/EpisodeModel;
    .locals 8

    :try_start_0
    new-instance v0, Lib/player/models/EpisodeModel;

    invoke-direct {v0}, Lib/player/models/EpisodeModel;-><init>()V

    invoke-virtual {p0}, LQ4/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "All"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LQ4/a;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lib/player/models/EpisodeModel;->setCategory_name(Ljava/lang/String;)V

    iget-object v1, p0, LQ4/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lib/player/models/EpisodeModel;->setSeries_name(Ljava/lang/String;)V

    iget-object v1, p0, LQ4/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, LQ4/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lib/player/models/EpisodeModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const-string v6, "S\\d{2}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lib/player/models/EpisodeModel;->setSeason_name(Ljava/lang/String;)V

    invoke-virtual {v0}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Lib/player/models/EpisodeModel;->setSeries_name(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, LQ4/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LQ4/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lib/player/models/EpisodeModel;->setUrl(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, LQ4/a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, LQ4/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lib/player/models/EpisodeModel;->setStream_icon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCategory_name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainer_extension()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$container_extension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpisode_num()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$episode_num()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lib/player/models/EpisodeInfoModel;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$info_model()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    return-object v0
.end method

.method public getSeason()I
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$season()I

    move-result v0

    return v0
.end method

.method public getSeason_name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$season_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$season_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeries_name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$series_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$series_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream_icon()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EpisodeModel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$container_extension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->container_extension:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$episode_num()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->episode_num:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$info_model()Lib/player/models/EpisodeInfoModel;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->info_model:Lib/player/models/EpisodeInfoModel;

    return-object v0
.end method

.method public realmGet$season()I
    .locals 1

    iget v0, p0, Lib/player/models/EpisodeModel;->season:I

    return v0
.end method

.method public realmGet$season_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->season_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$series_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->series_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->stream_icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EpisodeModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->category_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$container_extension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->container_extension:Ljava/lang/String;

    return-void
.end method

.method public realmSet$episode_num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->episode_num:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$info_model(Lib/player/models/EpisodeInfoModel;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->info_model:Lib/player/models/EpisodeInfoModel;

    return-void
.end method

.method public realmSet$season(I)V
    .locals 0

    iput p1, p0, Lib/player/models/EpisodeModel;->season:I

    return-void
.end method

.method public realmSet$season_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->season_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$series_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->series_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->stream_icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EpisodeModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$category_name(Ljava/lang/String;)V

    return-void
.end method

.method public setContainer_extension(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$container_extension(Ljava/lang/String;)V

    return-void
.end method

.method public setEpisode_num(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$episode_num(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public setInfo(Lib/player/models/EpisodeInfoModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$info_model(Lib/player/models/EpisodeInfoModel;)V

    return-void
.end method

.method public setSeason(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$season(I)V

    return-void
.end method

.method public setSeason_name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$season_name(Ljava/lang/String;)V

    return-void
.end method

.method public setSeries_name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$series_name(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_icon(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$stream_icon(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$title(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EpisodeModel;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method
