.class public abstract Lv4/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ln0/e;

.field public static b:Landroidx/media3/datasource/HttpDataSource$Factory;

.field public static c:Lm0/b;

.field public static d:Ljava/io/File;

.field public static e:Ln0/t;


# direct methods
.method public static a(Landroid/content/Context;Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setExtensionRendererMode(I)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Z)Landroidx/media3/datasource/DataSource$Factory;
    .locals 3

    const-class v0, Lv4/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv4/a;->a:Ln0/e;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-static {p0, p1}, Lv4/a;->d(Landroid/content/Context;Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-static {p0}, Lv4/a;->c(Landroid/content/Context;)Ln0/b;

    move-result-object p0

    new-instance p1, Ln0/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroidx/media3/datasource/FileDataSource$Factory;

    invoke-direct {v2}, Landroidx/media3/datasource/FileDataSource$Factory;-><init>()V

    iput-object v2, p1, Ln0/e;->b:Landroidx/media3/datasource/FileDataSource$Factory;

    sget-object v2, Ln0/i;->a:Ln0/i;

    iput-object v2, p1, Ln0/e;->c:Ln0/i;

    iput-object p0, p1, Ln0/e;->a:Ln0/b;

    iput-object v1, p1, Ln0/e;->e:Landroidx/media3/datasource/DefaultDataSource$Factory;

    const/4 p0, 0x1

    iput-boolean p0, p1, Ln0/e;->d:Z

    const/4 p0, 0x2

    iput p0, p1, Ln0/e;->f:I

    sput-object p1, Lv4/a;->a:Ln0/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lv4/a;->a:Ln0/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ln0/b;
    .locals 9

    const-class v0, Lv4/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv4/a;->e:Ln0/t;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    const-class v2, Lv4/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v3, Lv4/a;->d:Ljava/io/File;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    sput-object v3, Lv4/a;->d:Ljava/io/File;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    sput-object v3, Lv4/a;->d:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    sget-object v3, Lv4/a;->d:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    const-string v2, "downloads"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ln0/t;

    new-instance v3, Ln0/q;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-class v5, Lv4/a;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v6, Lv4/a;->c:Lm0/b;

    if-nez v6, :cond_1

    new-instance v6, Lm0/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v7, "exoplayer_internal.db"

    const/4 v8, 0x1

    invoke-direct {v6, p0, v7, v4, v8}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v6, Lv4/a;->c:Lm0/b;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object p0, Lv4/a;->c:Lm0/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5

    invoke-direct {v2, v1, v3, p0}, Ln0/t;-><init>(Ljava/io/File;Ln0/q;Lm0/a;)V

    sput-object v2, Lv4/a;->e:Ln0/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :cond_2
    :goto_4
    sget-object p0, Lv4/a;->e:Ln0/t;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v0

    return-object p0

    :goto_5
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Z)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 3

    const-class v0, Lv4/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv4/a;->b:Landroidx/media3/datasource/HttpDataSource$Factory;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lo0/g;->a(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lo0/c;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lo0/c;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/ExecutorService;)V

    const/16 p0, 0x7530

    iput p0, v1, Lo0/c;->e:I

    iput p0, v1, Lo0/c;->f:I

    sput-object v1, Lv4/a;->b:Landroidx/media3/datasource/HttpDataSource$Factory;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lv4/a;->b:Landroidx/media3/datasource/HttpDataSource$Factory;

    if-nez p0, :cond_1

    new-instance p0, Ljava/net/CookieManager;

    invoke-direct {p0}, Ljava/net/CookieManager;-><init>()V

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {p0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    invoke-static {p0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    new-instance p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p0

    sput-object p0, Lv4/a;->b:Landroidx/media3/datasource/HttpDataSource$Factory;

    :cond_1
    sget-object p0, Lv4/a;->b:Landroidx/media3/datasource/HttpDataSource$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
