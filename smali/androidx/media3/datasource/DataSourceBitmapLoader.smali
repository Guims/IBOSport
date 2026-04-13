.class public final Landroidx/media3/datasource/DataSourceBitmapLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/b;


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Lo3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/h;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final listeningExecutorService:Lt3/t;

.field private final maximumOutputDimension:I

.field private final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, La/a;->E(Lo3/h;)Lo3/h;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lo3/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lo3/h;

    invoke-interface {v0}, Lo3/h;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/t;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lt3/t;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lt3/t;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lt3/t;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lt3/t;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lt3/t;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V

    return-void
.end method

.method public constructor <init>(Lt3/t;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lt3/t;

    iput-object p2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    iput p4, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    return-void
.end method

.method public static synthetic a(Landroidx/media3/datasource/DataSourceBitmapLoader;[B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lt3/t;
    .locals 1

    invoke-static {}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$static$0()Lt3/t;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$loadBitmap$2(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    iget v2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$loadBitmap$2(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    iget v2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    invoke-static {v0, p1, v1, v2}, Landroidx/media3/datasource/DataSourceBitmapLoader;->load(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static lambda$static$0()Lt3/t;
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    instance-of v1, v0, Lt3/t;

    if-eqz v1, :cond_0

    check-cast v0, Lt3/t;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    new-instance v1, Lt3/x;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0}, Lt3/x;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1

    :cond_1
    new-instance v1, Lt3/u;

    invoke-direct {v1, v0}, Lt3/u;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method private static load(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    new-instance v0, Landroidx/media3/datasource/DataSpec;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {p0, v0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->readToEnd(Landroidx/media3/datasource/DataSource;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0, p2, p3}, Landroidx/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    throw p1
.end method


# virtual methods
.method public decodeBitmap([B)Lt3/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lt3/s;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lt3/t;

    new-instance v1, Landroidx/media3/datasource/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/datasource/c;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader;Ljava/lang/Object;I)V

    check-cast v0, Lt3/u;

    invoke-virtual {v0, v1}, Lt3/u;->a(Ljava/util/concurrent/Callable;)Lt3/s;

    move-result-object p1

    return-object p1
.end method

.method public loadBitmap(Landroid/net/Uri;)Lt3/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lt3/s;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lt3/t;

    new-instance v1, Landroidx/media3/datasource/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/datasource/c;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader;Ljava/lang/Object;I)V

    check-cast v0, Lt3/u;

    invoke-virtual {v0, v1}, Lt3/u;->a(Ljava/util/concurrent/Callable;)Lt3/s;

    move-result-object p1

    return-object p1
.end method

.method public loadBitmapFromMetadata(Landroidx/media3/common/MediaMetadata;)Lt3/s;
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lk0/b;->decodeBitmap([B)Lt3/s;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lk0/b;->loadBitmap(Landroid/net/Uri;)Lt3/s;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public supportsMimeType(Ljava/lang/String;)Z
    .locals 5

    sget v0, Lk0/C;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "image/png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "image/bmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "image/webp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "image/jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "image/heif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "image/heic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v2

    goto :goto_0

    :sswitch_6
    const-string v1, "image/avif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 p1, 0x1a

    if-lt v0, p1, :cond_7

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x22

    if-lt v0, p1, :cond_7

    :goto_1
    :pswitch_2
    return v2

    :cond_7
    :goto_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
