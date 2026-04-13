.class public final Ly0/h;
.super Ljava/lang/Object;

# interfaces
.implements Ly0/k;


# instance fields
.field public final b:Landroid/content/Context;

.field public q:I

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/h;->b:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Ly0/h;->q:I

    iput-boolean p1, p0, Ly0/h;->r:Z

    return-void
.end method


# virtual methods
.method public final a(LD5/g;)Ly0/l;
    .locals 3

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget v1, p0, Ly0/h;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_2

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ly0/h;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.amazon.hardware.tv_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p1, LD5/g;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lk0/C;->G(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    invoke-static {v2, v1}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bumptech/glide/manager/r;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/manager/r;-><init>(I)V

    iget-boolean v0, p0, Ly0/h;->r:Z

    iput-boolean v0, v1, Lcom/bumptech/glide/manager/r;->q:Z

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/r;->c(LD5/g;)Ly0/c;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lt4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Lt4/e;->a(LD5/g;)Ly0/l;

    move-result-object p1

    return-object p1
.end method
