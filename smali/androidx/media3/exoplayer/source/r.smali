.class public final Landroidx/media3/exoplayer/source/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/D;


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/p;

.field public b:Landroidx/media3/datasource/DataSource$Factory;

.field public c:Lx2/f;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:F

.field public final h:F

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    new-instance p1, LI0/n;

    invoke-direct {p1}, LI0/n;-><init>()V

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/r;-><init>(Landroidx/media3/datasource/DefaultDataSource$Factory;LI0/t;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LI0/t;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/source/r;-><init>(Landroidx/media3/datasource/DefaultDataSource$Factory;LI0/t;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DefaultDataSource$Factory;LI0/t;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/r;->b:Landroidx/media3/datasource/DataSource$Factory;

    new-instance v0, Lx2/f;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/r;->c:Lx2/f;

    new-instance v1, Landroidx/media3/exoplayer/source/p;

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/source/p;-><init>(LI0/t;Lx2/f;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/r;->a:Landroidx/media3/exoplayer/source/p;

    iget-object p2, v1, Landroidx/media3/exoplayer/source/p;->d:Landroidx/media3/datasource/DataSource$Factory;

    if-eq p1, p2, :cond_0

    iput-object p1, v1, Landroidx/media3/exoplayer/source/p;->d:Landroidx/media3/datasource/DataSource$Factory;

    iget-object p1, v1, Landroidx/media3/exoplayer/source/p;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, v1, Landroidx/media3/exoplayer/source/p;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/r;->d:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/r;->e:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/r;->f:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/source/r;->g:F

    iput p1, p0, Landroidx/media3/exoplayer/source/r;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/r;->i:Z

    return-void
.end method

.method public static e(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/D;
    .locals 1

    :try_start_0
    const-class v0, Landroidx/media3/datasource/DataSource$Factory;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/D;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic a(Lu0/r;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/r;->g(Lu0/r;)Landroidx/media3/exoplayer/source/r;

    return-object p0
.end method

.method public final b(Lx2/f;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/r;->c:Lx2/f;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r;->a:Landroidx/media3/exoplayer/source/p;

    iput-object p1, v0, Landroidx/media3/exoplayer/source/p;->f:Lx2/f;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/p;->a:LI0/t;

    invoke-interface {v1, p1}, LI0/t;->b(Lx2/f;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/source/p;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/D;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/D;->b(Lx2/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/G;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "ssai"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const-string v4, "application/x-image-uri"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    invoke-static {v3}, Lk0/C;->J(Landroid/net/Uri;)I

    move-result v2

    goto :goto_2

    :cond_2
    sget v3, Lk0/C;->a:I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "application/x-rtsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v8, v6

    goto :goto_1

    :sswitch_1
    const-string v3, "application/dash+xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v8, v7

    goto :goto_1

    :sswitch_2
    const-string v3, "application/vnd.ms-sstr+xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v8, v5

    goto :goto_1

    :sswitch_3
    const-string v3, "application/x-mpegURL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v8, v4

    :goto_1
    packed-switch v8, :pswitch_data_0

    const/4 v2, 0x4

    goto :goto_2

    :pswitch_0
    move v2, v6

    goto :goto_2

    :pswitch_1
    move v2, v4

    goto :goto_2

    :pswitch_2
    move v2, v5

    goto :goto_2

    :pswitch_3
    move v2, v7

    :goto_2
    iget-object v3, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-wide v6, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v8

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroidx/media3/exoplayer/source/r;->a:Landroidx/media3/exoplayer/source/p;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/p;->a:LI0/t;

    instance-of v6, v3, LI0/n;

    if-eqz v6, :cond_7

    check-cast v3, LI0/n;

    monitor-enter v3

    :try_start_0
    iput v5, v3, LI0/n;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :goto_3
    :try_start_2
    iget-object v3, v1, Landroidx/media3/exoplayer/source/r;->a:Landroidx/media3/exoplayer/source/p;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/source/p;->a(I)Landroidx/media3/exoplayer/source/D;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v3, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$LiveConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v3

    iget-object v6, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v6, v6, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/r;->d:J

    invoke-virtual {v3, v6, v7}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    :cond_8
    iget-object v6, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v6, v6, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    iget v6, v1, Landroidx/media3/exoplayer/source/r;->g:F

    invoke-virtual {v3, v6}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    :cond_9
    iget-object v6, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v6, v6, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_a

    iget v6, v1, Landroidx/media3/exoplayer/source/r;->h:F

    invoke-virtual {v3, v6}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    :cond_a
    iget-object v6, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v6, v6, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/r;->e:J

    invoke-virtual {v3, v6, v7}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    :cond_b
    iget-object v6, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v6, v6, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/r;->f:J

    invoke-virtual {v3, v6, v7}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    :cond_c
    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v3

    iget-object v6, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v3, v6}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaItem$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    :cond_d
    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/source/D;->c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/G;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lp3/H;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v5

    new-array v6, v6, [Landroidx/media3/exoplayer/source/G;

    aput-object v2, v6, v4

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_f

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/r;->i:Z

    if-eqz v2, :cond_e

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    new-instance v7, LD0/f;

    const/4 v8, 0x5

    invoke-direct {v7, v1, v8, v2}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/r;->b:Landroidx/media3/datasource/DataSource$Factory;

    new-instance v12, LA3/d;

    const/16 v2, 0xc

    invoke-direct {v12, v2, v7}, LA3/d;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lu0/h;

    invoke-direct {v2}, Lu0/h;-><init>()V

    new-instance v14, LE0/j;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v8, v8, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/common/MediaItem;->fromUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object v10

    iget-object v8, v10, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/media3/exoplayer/source/Y;

    invoke-virtual {v2, v10}, Lu0/h;->b(Landroidx/media3/common/MediaItem;)Lu0/q;

    move-result-object v13

    const/high16 v15, 0x100000

    const/16 v16, 0x1

    invoke-direct/range {v9 .. v16}, Landroidx/media3/exoplayer/source/Y;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;LA3/d;Lu0/q;LE0/m;IZ)V

    aput-object v9, v6, v7

    goto :goto_5

    :cond_e
    iget-object v2, v1, Landroidx/media3/exoplayer/source/r;->b:Landroidx/media3/datasource/DataSource$Factory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, LE0/j;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    new-instance v10, Landroidx/media3/exoplayer/source/o0;

    invoke-direct {v10, v9, v2, v7}, Landroidx/media3/exoplayer/source/o0;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;LE0/m;)V

    aput-object v10, v6, v8

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_f
    new-instance v2, Landroidx/media3/exoplayer/source/O;

    invoke-direct {v2, v6}, Landroidx/media3/exoplayer/source/O;-><init>([Landroidx/media3/exoplayer/source/G;)V

    :cond_10
    move-object v8, v2

    iget-object v2, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v9, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-nez v3, :cond_11

    iget-wide v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v3, v6

    if-nez v3, :cond_11

    iget-boolean v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-nez v3, :cond_11

    goto :goto_6

    :cond_11
    new-instance v7, Landroidx/media3/exoplayer/source/g;

    iget-wide v11, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-boolean v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    xor-int/lit8 v13, v3, 0x1

    iget-boolean v14, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v15, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    invoke-direct/range {v7 .. v15}, Landroidx/media3/exoplayer/source/g;-><init>(Landroidx/media3/exoplayer/source/G;JJZZZ)V

    move-object v8, v7

    :goto_6
    iget-object v2, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

    if-nez v0, :cond_12

    return-object v8

    :cond_12
    const-string v0, "DMediaSourceFactory"

    const-string v2, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    invoke-static {v0, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_13
    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-wide v4, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    sget v0, Lk0/C;->a:I

    throw v3

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/r;->i:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r;->a:Landroidx/media3/exoplayer/source/p;

    iput-boolean p1, v0, Landroidx/media3/exoplayer/source/p;->e:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/source/p;->a:LI0/t;

    invoke-interface {v1, p1}, LI0/t;->f(Z)V

    iget-object v0, v0, Landroidx/media3/exoplayer/source/p;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/D;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/D;->d(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/r;->b:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r;->a:Landroidx/media3/exoplayer/source/p;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/p;->d:Landroidx/media3/datasource/DataSource$Factory;

    if-eq p1, v1, :cond_0

    iput-object p1, v0, Landroidx/media3/exoplayer/source/p;->d:Landroidx/media3/datasource/DataSource$Factory;

    iget-object p1, v0, Landroidx/media3/exoplayer/source/p;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, v0, Landroidx/media3/exoplayer/source/p;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final g(Lu0/r;)Landroidx/media3/exoplayer/source/r;
    .locals 2

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lk0/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r;->a:Landroidx/media3/exoplayer/source/p;

    iput-object p1, v0, Landroidx/media3/exoplayer/source/p;->g:Lu0/r;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/p;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/D;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/D;->a(Lu0/r;)Landroidx/media3/exoplayer/source/D;

    goto :goto_0

    :cond_0
    return-object p0
.end method
