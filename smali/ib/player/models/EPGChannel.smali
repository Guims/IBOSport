.class public Lib/player/models/EPGChannel;
.super Lio/realm/O;

# interfaces
.implements Ljava/io/Serializable;
.implements Lib/player/models/BaseModel;


# instance fields
.field private Id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "epg_channel_id"
    .end annotation
.end field

.field private added:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "added"
    .end annotation
.end field

.field private category_id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "category_id"
    .end annotation
.end field

.field private category_name:Ljava/lang/String;

.field private cell:I

.field private channelID:I

.field private custom_sid:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "custom_sid"
    .end annotation
.end field

.field private direct_source:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "direct_source"
    .end annotation
.end field

.field private is_favorite:Z

.field private is_locked:Z

.field private is_recent:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "name"
    .end annotation
.end field

.field private num:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "num"
    .end annotation
.end field

.field private recent_pos:J

.field public selected:Z

.field private stream_icon:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "stream_icon"
    .end annotation
.end field

.field private stream_id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "stream_id"
    .end annotation
.end field

.field private stream_type:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "stream_type"
    .end annotation
.end field

.field private tv_archive:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "tv_archive"
    .end annotation
.end field

.field private tv_archive_duration:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "tv_archive_duration"
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->a()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    const-string v1, "-1"

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_locked(Z)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_favorite(Z)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_recent(Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lib/player/models/EPGChannel;->realmSet$recent_pos(J)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$cell(I)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$channelID(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->a()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    const-string v1, "-1"

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_locked(Z)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_favorite(Z)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_recent(Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lib/player/models/EPGChannel;->realmSet$recent_pos(J)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$cell(I)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$channelID(I)V

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lib/player/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lib/player/models/EPGChannel;->realmSet$channelID(I)V

    invoke-virtual {p0, p4}, Lib/player/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lib/player/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lib/player/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->a()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    const-string v1, "-1"

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_locked(Z)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_favorite(Z)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$is_recent(Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lib/player/models/EPGChannel;->realmSet$recent_pos(J)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lib/player/models/EPGChannel;->realmSet$cell(I)V

    invoke-virtual {p0, v0}, Lib/player/models/EPGChannel;->realmSet$channelID(I)V

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lib/player/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lib/player/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    return-void
.end method

.method public static fromM3UItem(LQ4/a;)Lib/player/models/EPGChannel;
    .locals 5

    const-string v0, "."

    :try_start_0
    new-instance v1, Lib/player/models/EPGChannel;

    invoke-direct {v1}, Lib/player/models/EPGChannel;-><init>()V

    invoke-virtual {p0}, LQ4/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "All"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LQ4/a;->a()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lib/player/models/EPGChannel;->setCategory_name(Ljava/lang/String;)V

    iget-object v2, p0, LQ4/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LQ4/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lib/player/models/EPGChannel;->setId(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, LQ4/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LQ4/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lib/player/models/EPGChannel;->setName(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, LQ4/a;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, LQ4/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lib/player/models/EPGChannel;->setUrl(Ljava/lang/String;)V

    iget-object v2, p0, LQ4/a;->d:Ljava/lang/String;

    const-string v3, "live"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "/"

    const-string v4, ""

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lib/player/models/EPGChannel;->setStream_id(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lib/player/models/EPGChannel;->setStream_id(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/models/EPGChannel;->setStream_id(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lib/player/models/EPGChannel;->setStream_id(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/models/EPGChannel;->setStream_id(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v0, p0, LQ4/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, LQ4/a;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lib/player/models/EPGChannel;->setStream_icon(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    return-object v1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAdded()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$added()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryType()Lib/player/base/m;
    .locals 1

    sget-object v0, Lib/player/base/m;->b:Lib/player/base/m;

    return-object v0
.end method

.method public getCategory_id()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$category_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$category_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCell()I
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$cell()I

    move-result v0

    return v0
.end method

.method public getChannelID()I
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$channelID()I

    move-result v0

    return v0
.end method

.method public getCustom_sid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$custom_sid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirect_source()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$direct_source()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$Id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$Id()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown channel"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$num()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$num()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecent_pos()J
    .locals 2

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$recent_pos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStream_icon()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$stream_icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream_id()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$stream_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream_type()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStudio()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$stream_type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTv_archive()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$tv_archive()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTv_archive_duration()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$tv_archive_duration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIs_recent()Z
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$is_recent()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$selected()Z

    move-result v0

    return v0
.end method

.method public is_favorite()Z
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$is_favorite()Z

    move-result v0

    return v0
.end method

.method public is_locked()Z
    .locals 1

    invoke-virtual {p0}, Lib/player/models/EPGChannel;->realmGet$is_locked()Z

    move-result v0

    return v0
.end method

.method public realmGet$Id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$added()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->added:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$category_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cell()I
    .locals 1

    iget v0, p0, Lib/player/models/EPGChannel;->cell:I

    return v0
.end method

.method public realmGet$channelID()I
    .locals 1

    iget v0, p0, Lib/player/models/EPGChannel;->channelID:I

    return v0
.end method

.method public realmGet$custom_sid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->custom_sid:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$direct_source()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->direct_source:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$is_favorite()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/EPGChannel;->is_favorite:Z

    return v0
.end method

.method public realmGet$is_locked()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/EPGChannel;->is_locked:Z

    return v0
.end method

.method public realmGet$is_recent()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/EPGChannel;->is_recent:Z

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$num()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->num:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$recent_pos()J
    .locals 2

    iget-wide v0, p0, Lib/player/models/EPGChannel;->recent_pos:J

    return-wide v0
.end method

.method public realmGet$selected()Z
    .locals 1

    iget-boolean v0, p0, Lib/player/models/EPGChannel;->selected:Z

    return v0
.end method

.method public realmGet$stream_icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->stream_icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->stream_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$stream_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->stream_type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tv_archive()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->tv_archive:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$tv_archive_duration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->tv_archive_duration:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/EPGChannel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$Id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->Id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$added(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->added:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->category_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$category_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->category_name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cell(I)V
    .locals 0

    iput p1, p0, Lib/player/models/EPGChannel;->cell:I

    return-void
.end method

.method public realmSet$channelID(I)V
    .locals 0

    iput p1, p0, Lib/player/models/EPGChannel;->channelID:I

    return-void
.end method

.method public realmSet$custom_sid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->custom_sid:Ljava/lang/String;

    return-void
.end method

.method public realmSet$direct_source(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->direct_source:Ljava/lang/String;

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lib/player/models/EPGChannel;->is_favorite:Z

    return-void
.end method

.method public realmSet$is_locked(Z)V
    .locals 0

    iput-boolean p1, p0, Lib/player/models/EPGChannel;->is_locked:Z

    return-void
.end method

.method public realmSet$is_recent(Z)V
    .locals 0

    iput-boolean p1, p0, Lib/player/models/EPGChannel;->is_recent:Z

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->num:Ljava/lang/String;

    return-void
.end method

.method public realmSet$recent_pos(J)V
    .locals 0

    iput-wide p1, p0, Lib/player/models/EPGChannel;->recent_pos:J

    return-void
.end method

.method public realmSet$selected(Z)V
    .locals 0

    iput-boolean p1, p0, Lib/player/models/EPGChannel;->selected:Z

    return-void
.end method

.method public realmSet$stream_icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->stream_icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->stream_id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$stream_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->stream_type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tv_archive(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->tv_archive:Ljava/lang/String;

    return-void
.end method

.method public realmSet$tv_archive_duration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->tv_archive_duration:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/EPGChannel;->url:Ljava/lang/String;

    return-void
.end method

.method public setAdded(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$added(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_id(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$category_id(Ljava/lang/String;)V

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$category_name(Ljava/lang/String;)V

    return-void
.end method

.method public setCell(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$cell(I)V

    return-void
.end method

.method public setChannelID(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$channelID(I)V

    return-void
.end method

.method public setCustom_sid(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$custom_sid(Ljava/lang/String;)V

    return-void
.end method

.method public setDirect_source(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$direct_source(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$Id(Ljava/lang/String;)V

    return-void
.end method

.method public setIs_favorite(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$is_favorite(Z)V

    return-void
.end method

.method public setIs_locked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$is_locked(Z)V

    return-void
.end method

.method public setIs_recent(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$is_recent(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$num(Ljava/lang/String;)V

    return-void
.end method

.method public setRecent_pos(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lib/player/models/EPGChannel;->realmSet$recent_pos(J)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$selected(Z)V

    return-void
.end method

.method public setStream_icon(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$stream_icon(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_id(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$stream_id(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_type(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$stream_type(Ljava/lang/String;)V

    return-void
.end method

.method public setTv_archive(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$tv_archive(Ljava/lang/String;)V

    return-void
.end method

.method public setTv_archive_duration(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$tv_archive_duration(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lib/player/models/EPGChannel;->realmSet$url(Ljava/lang/String;)V

    return-void
.end method
