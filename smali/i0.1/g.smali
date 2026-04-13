.class public final Li0/g;
.super Ljava/lang/Object;

# interfaces
.implements Li0/d;


# instance fields
.field public b:I

.field public c:F

.field public d:F

.field public e:Li0/b;

.field public f:Li0/b;

.field public g:Li0/b;

.field public h:Li0/b;

.field public i:Z

.field public j:Li0/f;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ShortBuffer;

.field public m:Ljava/nio/ByteBuffer;

.field public n:J

.field public o:J

.field public p:Z


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Li0/g;->f:Li0/b;

    iget v0, v0, Li0/b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Li0/g;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Li0/g;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Li0/g;->f:Li0/b;

    iget v0, v0, Li0/b;->a:I

    iget-object v1, p0, Li0/g;->e:Li0/b;

    iget v1, v1, Li0/b;->a:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, Li0/g;->j:Li0/f;

    if-eqz v0, :cond_1

    iget v1, v0, Li0/f;->b:I

    iget v2, v0, Li0/f;->m:I

    mul-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_1

    iget-object v3, p0, Li0/g;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Li0/g;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Li0/g;->l:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Li0/g;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Li0/g;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v3, p0, Li0/g;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    div-int/2addr v4, v1

    iget v5, v0, Li0/f;->m:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, v0, Li0/f;->l:[S

    mul-int v6, v4, v1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v3, v0, Li0/f;->m:I

    sub-int/2addr v3, v4

    iput v3, v0, Li0/f;->m:I

    iget-object v0, v0, Li0/f;->l:[S

    mul-int/2addr v3, v1

    invoke-static {v0, v6, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Li0/g;->o:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Li0/g;->o:J

    iget-object v0, p0, Li0/g;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Li0/g;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Li0/g;->m:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Li0/g;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Li0/d;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Li0/g;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final c(Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li0/g;->j:Li0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Li0/g;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Li0/g;->n:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, v0, Li0/f;->b:I

    div-int/2addr v3, v4

    mul-int v5, v3, v4

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, v0, Li0/f;->j:[S

    iget v7, v0, Li0/f;->k:I

    invoke-virtual {v0, v6, v7, v3}, Li0/f;->c([SII)[S

    move-result-object v6

    iput-object v6, v0, Li0/f;->j:[S

    iget v7, v0, Li0/f;->k:I

    mul-int/2addr v7, v4

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v6, v7, v5}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v1, v0, Li0/f;->k:I

    add-int/2addr v1, v3

    iput v1, v0, Li0/f;->k:I

    invoke-virtual {v0}, Li0/f;->f()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final d()V
    .locals 11

    iget-object v0, p0, Li0/g;->j:Li0/f;

    if-eqz v0, :cond_2

    iget v1, v0, Li0/f;->k:I

    iget v2, v0, Li0/f;->c:F

    iget v3, v0, Li0/f;->d:F

    div-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, v0, Li0/f;->e:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    iget v6, v0, Li0/f;->r:I

    sub-int v7, v1, v6

    iget v8, v0, Li0/f;->m:I

    int-to-double v9, v7

    div-double/2addr v9, v4

    int-to-double v4, v6

    add-double/2addr v9, v4

    iget-wide v4, v0, Li0/f;->w:D

    add-double/2addr v9, v4

    iget v4, v0, Li0/f;->o:I

    int-to-double v4, v4

    add-double/2addr v9, v4

    div-double/2addr v9, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v2

    double-to-int v2, v9

    add-int/2addr v8, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Li0/f;->w:D

    iget-object v2, v0, Li0/f;->j:[S

    iget v3, v0, Li0/f;->h:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v3, v1

    invoke-virtual {v0, v2, v1, v4}, Li0/f;->c([SII)[S

    move-result-object v2

    iput-object v2, v0, Li0/f;->j:[S

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, v0, Li0/f;->b:I

    mul-int v6, v3, v5

    if-ge v4, v6, :cond_0

    iget-object v6, v0, Li0/f;->j:[S

    mul-int/2addr v5, v1

    add-int/2addr v5, v4

    aput-short v2, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Li0/f;->k:I

    add-int/2addr v3, v1

    iput v3, v0, Li0/f;->k:I

    invoke-virtual {v0}, Li0/f;->f()V

    iget v1, v0, Li0/f;->m:I

    if-le v1, v8, :cond_1

    iput v8, v0, Li0/f;->m:I

    :cond_1
    iput v2, v0, Li0/f;->k:I

    iput v2, v0, Li0/f;->r:I

    iput v2, v0, Li0/f;->o:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/g;->p:Z

    return-void
.end method

.method public final e(Li0/b;)Li0/b;
    .locals 3

    iget v0, p1, Li0/b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Li0/g;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Li0/b;->a:I

    :cond_0
    iput-object p1, p0, Li0/g;->e:Li0/b;

    new-instance v2, Li0/b;

    iget p1, p1, Li0/b;->b:I

    invoke-direct {v2, v0, p1, v1}, Li0/b;-><init>(III)V

    iput-object v2, p0, Li0/g;->f:Li0/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/g;->i:Z

    return-object v2

    :cond_1
    new-instance v0, Li0/c;

    invoke-direct {v0, p1}, Li0/c;-><init>(Li0/b;)V

    throw v0
.end method

.method public final flush()V
    .locals 10

    invoke-virtual {p0}, Li0/g;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/g;->e:Li0/b;

    iput-object v0, p0, Li0/g;->g:Li0/b;

    iget-object v2, p0, Li0/g;->f:Li0/b;

    iput-object v2, p0, Li0/g;->h:Li0/b;

    iget-boolean v3, p0, Li0/g;->i:Z

    if-eqz v3, :cond_0

    new-instance v4, Li0/f;

    iget v5, v0, Li0/b;->a:I

    iget v6, v0, Li0/b;->b:I

    iget v7, p0, Li0/g;->c:F

    iget v8, p0, Li0/g;->d:F

    iget v9, v2, Li0/b;->a:I

    invoke-direct/range {v4 .. v9}, Li0/f;-><init>(IIFFI)V

    iput-object v4, p0, Li0/g;->j:Li0/f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li0/g;->j:Li0/f;

    if-eqz v0, :cond_1

    iput v1, v0, Li0/f;->k:I

    iput v1, v0, Li0/f;->m:I

    iput v1, v0, Li0/f;->o:I

    iput v1, v0, Li0/f;->p:I

    iput v1, v0, Li0/f;->q:I

    iput v1, v0, Li0/f;->r:I

    iput v1, v0, Li0/f;->s:I

    iput v1, v0, Li0/f;->t:I

    iput v1, v0, Li0/f;->u:I

    iput v1, v0, Li0/f;->v:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Li0/f;->w:D

    :cond_1
    :goto_0
    sget-object v0, Li0/d;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Li0/g;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Li0/g;->n:J

    iput-wide v2, p0, Li0/g;->o:J

    iput-boolean v1, p0, Li0/g;->p:Z

    return-void
.end method

.method public final isEnded()Z
    .locals 2

    iget-boolean v0, p0, Li0/g;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/g;->j:Li0/f;

    if-eqz v0, :cond_0

    iget v1, v0, Li0/f;->m:I

    iget v0, v0, Li0/f;->b:I

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Li0/g;->c:F

    iput v0, p0, Li0/g;->d:F

    sget-object v0, Li0/b;->e:Li0/b;

    iput-object v0, p0, Li0/g;->e:Li0/b;

    iput-object v0, p0, Li0/g;->f:Li0/b;

    iput-object v0, p0, Li0/g;->g:Li0/b;

    iput-object v0, p0, Li0/g;->h:Li0/b;

    sget-object v0, Li0/d;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Li0/g;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Li0/g;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Li0/g;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Li0/g;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/g;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Li0/g;->j:Li0/f;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Li0/g;->n:J

    iput-wide v1, p0, Li0/g;->o:J

    iput-boolean v0, p0, Li0/g;->p:Z

    return-void
.end method
