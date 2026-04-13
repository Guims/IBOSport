.class public final Lx0/b;
.super Lp0/i;


# instance fields
.field public final o:Lq0/h;


# direct methods
.method public constructor <init>(Lq0/h;)V
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [Lp0/f;

    new-array v0, v0, [Lx0/a;

    invoke-direct {p0, v1, v0}, Lp0/i;-><init>([Lp0/f;[Lp0/g;)V

    iput-object p1, p0, Lx0/b;->o:Lq0/h;

    return-void
.end method


# virtual methods
.method public final f()Lp0/f;
    .locals 3

    new-instance v0, Lp0/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp0/f;-><init>(II)V

    return-object v0
.end method

.method public final g()Lp0/g;
    .locals 1

    new-instance v0, Lx0/a;

    invoke-direct {v0, p0}, Lx0/a;-><init>(Lx0/b;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapFactoryImageDecoder"

    return-object v0
.end method

.method public final h(Ljava/lang/Throwable;)Lp0/d;
    .locals 2

    new-instance v0, Lx0/d;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final i(Lp0/f;Lp0/g;Z)Lp0/d;
    .locals 2

    check-cast p2, Lx0/a;

    :try_start_0
    iget-object p3, p1, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget-object v0, p0, Lx0/b;->o:Lq0/h;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p3}, Lq0/h;->b([BI)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p2, Lx0/a;->u:Landroid/graphics/Bitmap;

    iget-wide v0, p1, Lp0/f;->v:J

    iput-wide v0, p2, Lp0/g;->r:J
    :try_end_0
    .catch Lx0/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method
