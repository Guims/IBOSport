.class public final Lx0/g;
.super Landroidx/media3/exoplayer/BaseRenderer;


# instance fields
.field public A:Lx0/b;

.field public B:Lp0/f;

.field public C:Landroidx/media3/exoplayer/image/ImageOutput;

.field public D:Landroid/graphics/Bitmap;

.field public E:Z

.field public F:Lh2/b;

.field public G:Lh2/b;

.field public H:I

.field public final b:Lx0/c;

.field public final q:Lp0/f;

.field public final r:Ljava/util/ArrayDeque;

.field public s:Z

.field public t:Z

.field public u:Lx0/f;

.field public v:J

.field public w:J

.field public x:I

.field public y:I

.field public z:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Lx0/c;)V
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p1, p0, Lx0/g;->b:Lx0/c;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageOutput;->a:Lx0/e;

    iput-object p1, p0, Lx0/g;->C:Landroidx/media3/exoplayer/image/ImageOutput;

    new-instance p1, Lp0/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Lx0/g;->q:Lp0/f;

    sget-object p1, Lx0/f;->c:Lx0/f;

    iput-object p1, p0, Lx0/g;->u:Lx0/f;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lx0/g;->r:Ljava/util/ArrayDeque;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lx0/g;->w:J

    iput-wide v1, p0, Lx0/g;->v:J

    iput v0, p0, Lx0/g;->x:I

    const/4 p1, 0x1

    iput p1, p0, Lx0/g;->y:I

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 12

    iget-object v0, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/g;->F:Lh2/b;

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p0, Lx0/g;->y:I

    const/4 v2, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lx0/g;->r:Ljava/util/ArrayDeque;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lx0/g;->A:Lx0/b;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lx0/g;->A:Lx0/b;

    invoke-virtual {v0}, Lp0/i;->k()Lp0/g;

    move-result-object v0

    check-cast v0, Lx0/a;

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, LU2/e;->c(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget p1, p0, Lx0/g;->x:I

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lx0/g;->d()V

    iget-object p1, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lx0/g;->c()V

    return v1

    :cond_3
    invoke-virtual {v0}, Lx0/a;->l()V

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    iput-boolean v5, p0, Lx0/g;->t:Z

    return v1

    :cond_4
    iget-object v6, v0, Lx0/a;->u:Landroid/graphics/Bitmap;

    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    invoke-static {v6, v7}, Lk0/c;->l(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lx0/a;->u:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lx0/a;->l()V

    :cond_5
    iget-boolean v0, p0, Lx0/g;->E:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lx0/g;->F:Lh2/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    iget v6, v0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    if-ne v6, v5, :cond_6

    iget v7, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    if-eq v7, v5, :cond_7

    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget v0, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    if-eq v0, v7, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    iget-object v6, p0, Lx0/g;->F:Lh2/b;

    iget-object v7, v6, Lh2/b;->c:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget v7, v6, Lh2/b;->a:I

    iget-object v8, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    invoke-static {v8}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v8, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-static {v9}, Lk0/c;->k(Ljava/lang/Object;)V

    iget v9, v9, Landroidx/media3/common/Format;->tileCountHorizontal:I

    div-int/2addr v8, v9

    iget-object v9, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-static {v10}, Lk0/c;->k(Ljava/lang/Object;)V

    iget v10, v10, Landroidx/media3/common/Format;->tileCountVertical:I

    div-int/2addr v9, v10

    iget-object v10, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    iget v10, v10, Landroidx/media3/common/Format;->tileCountHorizontal:I

    rem-int v11, v7, v10

    mul-int/2addr v11, v8

    div-int/2addr v7, v10

    mul-int/2addr v7, v9

    iget-object v10, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    invoke-static {v10, v11, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    invoke-static {v7}, Lk0/c;->k(Ljava/lang/Object;)V

    :goto_1
    iput-object v7, v6, Lh2/b;->c:Ljava/lang/Object;

    :goto_2
    iget-object v6, p0, Lx0/g;->F:Lh2/b;

    iget-object v6, v6, Lh2/b;->c:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v6}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v7, p0, Lx0/g;->F:Lh2/b;

    iget-wide v7, v7, Lh2/b;->b:J

    sub-long p1, v7, p1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result v9

    if-ne v9, v2, :cond_a

    move v2, v5

    goto :goto_3

    :cond_a
    move v2, v1

    :goto_3
    iget v9, p0, Lx0/g;->y:I

    if-eqz v9, :cond_d

    if-eq v9, v5, :cond_c

    if-ne v9, v4, :cond_b

    move v2, v1

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_c
    move v2, v5

    :cond_d
    :goto_4
    if-nez v2, :cond_f

    const-wide/16 v9, 0x7530

    cmp-long p1, p1, v9

    if-gez p1, :cond_e

    goto :goto_5

    :cond_e
    move p1, v1

    goto :goto_6

    :cond_f
    :goto_5
    iget-object p1, p0, Lx0/g;->C:Landroidx/media3/exoplayer/image/ImageOutput;

    iget-object p2, p0, Lx0/g;->u:Lx0/f;

    iget-wide v9, p2, Lx0/f;->b:J

    sub-long/2addr v7, v9

    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    move p1, v5

    :goto_6
    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lx0/g;->F:Lh2/b;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide p1, p1, Lh2/b;->b:J

    iput-wide p1, p0, Lx0/g;->v:J

    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/f;

    iget-wide v1, v1, Lx0/f;->a:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_11

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/f;

    iput-object v1, p0, Lx0/g;->u:Lx0/f;

    goto :goto_7

    :cond_11
    iput v4, p0, Lx0/g;->y:I

    const/4 p1, 0x0

    if-eqz v0, :cond_12

    iget-object p2, p0, Lx0/g;->F:Lh2/b;

    invoke-static {p2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget p2, p2, Lh2/b;->a:I

    iget-object v0, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget v0, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget-object v1, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-static {v1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget v1, v1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v5

    if-ne p2, v0, :cond_13

    :cond_12
    iput-object p1, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    :cond_13
    iget-object p2, p0, Lx0/g;->G:Lh2/b;

    iput-object p2, p0, Lx0/g;->F:Lh2/b;

    iput-object p1, p0, Lx0/g;->G:Lh2/b;

    return v5

    :cond_14
    :goto_8
    return v1
.end method

.method public final b(J)Z
    .locals 12

    iget-boolean v0, p0, Lx0/g;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/g;->F:Lh2/b;

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    iget-object v2, p0, Lx0/g;->A:Lx0/b;

    if-eqz v2, :cond_15

    iget v3, p0, Lx0/g;->x:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    iget-boolean v3, p0, Lx0/g;->s:Z

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v3, p0, Lx0/g;->B:Lp0/f;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lp0/i;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/f;

    iput-object v2, p0, Lx0/g;->B:Lp0/f;

    if-nez v2, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v2, p0, Lx0/g;->x:I

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v2, v3, :cond_3

    iget-object p1, p0, Lx0/g;->B:Lp0/f;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lx0/g;->B:Lp0/f;

    iput v6, p1, LU2/e;->q:I

    iget-object p1, p0, Lx0/g;->A:Lx0/b;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object p2, p0, Lx0/g;->B:Lp0/f;

    invoke-virtual {p1, p2}, Lp0/i;->l(Lp0/f;)V

    iput-object v5, p0, Lx0/g;->B:Lp0/f;

    iput v4, p0, Lx0/g;->x:I

    return v1

    :cond_3
    iget-object v2, p0, Lx0/g;->B:Lp0/f;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v2

    const/4 v4, -0x5

    const/4 v7, 0x1

    if-eq v2, v4, :cond_14

    const/4 v0, -0x4

    if-eq v2, v0, :cond_5

    const/4 p1, -0x3

    if-ne v2, p1, :cond_4

    goto/16 :goto_9

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    iget-object v0, p0, Lx0/g;->B:Lp0/f;

    invoke-virtual {v0}, Lp0/f;->n()V

    iget-object v0, p0, Lx0/g;->B:Lp0/f;

    iget-object v0, v0, Lp0/f;->t:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lx0/g;->B:Lp0/f;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, LU2/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v7

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Lx0/g;->A:Lx0/b;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v3, p0, Lx0/g;->B:Lp0/f;

    invoke-static {v3}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lp0/i;->l(Lp0/f;)V

    iput v1, p0, Lx0/g;->H:I

    :cond_9
    iget-object v2, p0, Lx0/g;->B:Lp0/f;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, LU2/e;->c(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v7, p0, Lx0/g;->E:Z

    goto/16 :goto_7

    :cond_a
    new-instance v3, Lh2/b;

    iget v4, p0, Lx0/g;->H:I

    iget-wide v8, v2, Lp0/f;->v:J

    invoke-direct {v3, v4, v8, v9}, Lh2/b;-><init>(IJ)V

    iput-object v3, p0, Lx0/g;->G:Lh2/b;

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lx0/g;->H:I

    iget-boolean v2, p0, Lx0/g;->E:Z

    if-nez v2, :cond_11

    const-wide/16 v2, 0x7530

    sub-long v10, v8, v2

    cmp-long v10, v10, p1

    if-gtz v10, :cond_b

    add-long/2addr v2, v8

    cmp-long v2, p1, v2

    if-gtz v2, :cond_b

    move v2, v7

    goto :goto_1

    :cond_b
    move v2, v1

    :goto_1
    iget-object v3, p0, Lx0/g;->F:Lh2/b;

    if-eqz v3, :cond_c

    iget-wide v10, v3, Lh2/b;->b:J

    cmp-long v3, v10, p1

    if-gtz v3, :cond_c

    cmp-long p1, p1, v8

    if-gez p1, :cond_c

    move p1, v7

    goto :goto_2

    :cond_c
    move p1, v1

    :goto_2
    iget-object p2, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-static {p2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget p2, p2, Landroidx/media3/common/Format;->tileCountHorizontal:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_e

    iget-object p2, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    iget v8, p2, Landroidx/media3/common/Format;->tileCountVertical:I

    if-eq v8, v3, :cond_e

    iget p2, p2, Landroidx/media3/common/Format;->tileCountHorizontal:I

    mul-int/2addr v8, p2

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_d

    goto :goto_3

    :cond_d
    move p2, v1

    goto :goto_4

    :cond_e
    :goto_3
    move p2, v7

    :goto_4
    if-nez v2, :cond_10

    if-nez p1, :cond_10

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    move p2, v1

    goto :goto_6

    :cond_10
    :goto_5
    move p2, v7

    :goto_6
    iput-boolean p2, p0, Lx0/g;->E:Z

    if-eqz p1, :cond_11

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    iget-object p1, p0, Lx0/g;->G:Lh2/b;

    iput-object p1, p0, Lx0/g;->F:Lh2/b;

    iput-object v5, p0, Lx0/g;->G:Lh2/b;

    :goto_7
    iget-object p1, p0, Lx0/g;->B:Lp0/f;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, LU2/e;->c(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iput-boolean v7, p0, Lx0/g;->s:Z

    iput-object v5, p0, Lx0/g;->B:Lp0/f;

    return v1

    :cond_12
    iget-wide p1, p0, Lx0/g;->w:J

    iget-object v1, p0, Lx0/g;->B:Lp0/f;

    invoke-static {v1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v1, v1, Lp0/f;->v:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lx0/g;->w:J

    if-eqz v0, :cond_13

    iput-object v5, p0, Lx0/g;->B:Lp0/f;

    goto :goto_8

    :cond_13
    iget-object p1, p0, Lx0/g;->B:Lp0/f;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp0/f;->k()V

    :goto_8
    iget-boolean p1, p0, Lx0/g;->E:Z

    xor-int/2addr p1, v7

    return p1

    :cond_14
    iget-object p1, v0, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    iput-object p1, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    iput v3, p0, Lx0/g;->x:I

    return v7

    :cond_15
    :goto_9
    return v1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    iget-object v1, p0, Lx0/g;->b:Lx0/c;

    check-cast v1, Lv0/f;

    invoke-virtual {v1, v0}, Lv0/f;->k(Landroidx/media3/common/Format;)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lx0/d;

    const-string v1, "Provided decoder factory can\'t create decoder for format."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lx0/g;->A:Lx0/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lp0/i;->release()V

    :cond_2
    new-instance v0, Lx0/b;

    iget-object v1, v1, Lv0/f;->b:Ljava/lang/Object;

    check-cast v1, Lq0/h;

    invoke-direct {v0, v1}, Lx0/b;-><init>(Lq0/h;)V

    iput-object v0, p0, Lx0/g;->A:Lx0/b;

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lx0/g;->B:Lp0/f;

    const/4 v1, 0x0

    iput v1, p0, Lx0/g;->x:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lx0/g;->w:J

    iget-object v1, p0, Lx0/g;->A:Lx0/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lp0/i;->release()V

    iput-object v0, p0, Lx0/g;->A:Lx0/b;

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageRenderer"

    return-object v0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void

    :cond_0
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    if-eqz p1, :cond_1

    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->a:Lx0/e;

    :cond_2
    iput-object p2, p0, Lx0/g;->C:Landroidx/media3/exoplayer/image/ImageOutput;

    return-void
.end method

.method public final isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lx0/g;->t:Z

    return v0
.end method

.method public final isReady()Z
    .locals 2

    iget v0, p0, Lx0/g;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lx0/g;->E:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onDisabled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    sget-object v0, Lx0/f;->c:Lx0/f;

    iput-object v0, p0, Lx0/g;->u:Lx0/f;

    iget-object v0, p0, Lx0/g;->r:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lx0/g;->d()V

    iget-object v0, p0, Lx0/g;->C:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    return-void
.end method

.method public final onEnabled(ZZ)V
    .locals 0

    iput p2, p0, Lx0/g;->y:I

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x1

    iget p2, p0, Lx0/g;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lx0/g;->y:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx0/g;->t:Z

    iput-boolean p1, p0, Lx0/g;->s:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lx0/g;->D:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lx0/g;->F:Lh2/b;

    iput-object p2, p0, Lx0/g;->G:Lh2/b;

    iput-boolean p1, p0, Lx0/g;->E:Z

    iput-object p2, p0, Lx0/g;->B:Lp0/f;

    iget-object p1, p0, Lx0/g;->A:Lx0/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lp0/i;->flush()V

    :cond_0
    iget-object p1, p0, Lx0/g;->r:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final onRelease()V
    .locals 0

    invoke-virtual {p0}, Lx0/g;->d()V

    return-void
.end method

.method public final onReset()V
    .locals 2

    invoke-virtual {p0}, Lx0/g;->d()V

    const/4 v0, 0x1

    iget v1, p0, Lx0/g;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lx0/g;->y:I

    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/E;)V
    .locals 6

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/BaseRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/E;)V

    move-object p1, p0

    iget-object p2, p1, Lx0/g;->u:Lx0/f;

    iget-wide p2, p2, Lx0/f;->b:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lx0/g;->r:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-wide v2, p1, Lx0/g;->w:J

    cmp-long p3, v2, v0

    if-eqz p3, :cond_1

    iget-wide v4, p1, Lx0/g;->v:J

    cmp-long p3, v4, v0

    if-eqz p3, :cond_0

    cmp-long p3, v4, v2

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lx0/f;

    iget-wide v0, p1, Lx0/g;->w:J

    invoke-direct {p3, v0, v1, p4, p5}, Lx0/f;-><init>(JJ)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    new-instance p2, Lx0/f;

    invoke-direct {p2, v0, v1, p4, p5}, Lx0/f;-><init>(JJ)V

    iput-object p2, p1, Lx0/g;->u:Lx0/f;

    return-void
.end method

.method public final render(JJ)V
    .locals 2

    iget-boolean p3, p0, Lx0/g;->t:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    if-nez p3, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object p3

    iget-object p4, p0, Lx0/g;->q:Lp0/f;

    invoke-virtual {p4}, Lp0/f;->k()V

    const/4 v0, 0x2

    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    iget-object p3, p3, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {p3}, Lk0/c;->k(Ljava/lang/Object;)V

    iput-object p3, p0, Lx0/g;->z:Landroidx/media3/common/Format;

    invoke-virtual {p0}, Lx0/g;->c()V

    goto :goto_1

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p4, p1}, LU2/e;->c(I)Z

    move-result p1

    invoke-static {p1}, Lk0/c;->j(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx0/g;->s:Z

    iput-boolean p1, p0, Lx0/g;->t:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Lx0/g;->a(J)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0, p1, p2}, Lx0/g;->b(J)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Lx0/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    const/16 p3, 0xfa3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 1

    iget-object v0, p0, Lx0/g;->b:Lx0/c;

    check-cast v0, Lv0/f;

    invoke-virtual {v0, p1}, Lv0/f;->k(Landroidx/media3/common/Format;)I

    move-result p1

    return p1
.end method
