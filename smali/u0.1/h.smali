.class public final Lu0/h;
.super Ljava/lang/Object;

# interfaces
.implements Lu0/r;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroidx/media3/common/MediaItem$DrmConfiguration;

.field public c:Lu0/g;

.field public d:Landroidx/media3/datasource/HttpDataSource$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu0/h;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/MediaItem$DrmConfiguration;)Lu0/g;
    .locals 13

    iget-object v0, p0, Lu0/h;->d:Landroidx/media3/datasource/HttpDataSource$Factory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    :goto_0
    new-instance v4, Lu0/B;

    iget-object v2, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-boolean v2, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v4, v1, v2, v0}, Lu0/B;-><init>(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;)V

    iget-object v0, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lp3/J;

    invoke-virtual {v0}, Lp3/J;->b()Lp3/L;

    move-result-object v0

    invoke-virtual {v0}, Lp3/L;->l()Lp3/m0;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lu0/B;->d:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v5, v4, Lu0/B;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget v0, Landroidx/media3/common/C;->INDEX_UNSET:I

    new-instance v9, LE0/j;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iget-object v3, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    iget-boolean v8, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iget-object v0, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lp3/H;

    invoke-static {v0}, La/a;->O(Ljava/util/Collection;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v1, :cond_5

    aget v10, v0, v7

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v10, v11, :cond_4

    if-ne v10, v12, :cond_3

    goto :goto_4

    :cond_3
    move v12, v2

    :cond_4
    :goto_4
    invoke-static {v12}, Lk0/c;->d(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [I

    new-instance v2, Lu0/g;

    invoke-direct/range {v2 .. v9}, Lu0/g;-><init>(Ljava/util/UUID;Lu0/B;Ljava/util/HashMap;Z[IZLE0/j;)V

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object p1

    iget-object v0, v2, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, v2, Lu0/g;->v:[B

    return-object v2
.end method

.method public final b(Landroidx/media3/common/MediaItem;)Lu0/q;
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-nez p1, :cond_0

    sget-object p1, Lu0/q;->a:Lu0/o;

    return-object p1

    :cond_0
    iget-object v0, p0, Lu0/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu0/h;->b:Landroidx/media3/common/MediaItem$DrmConfiguration;

    sget v2, Lk0/C;->a:I

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lu0/h;->b:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-virtual {p0, p1}, Lu0/h;->a(Landroidx/media3/common/MediaItem$DrmConfiguration;)Lu0/g;

    move-result-object p1

    iput-object p1, p0, Lu0/h;->c:Lu0/g;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lu0/h;->c:Lu0/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
