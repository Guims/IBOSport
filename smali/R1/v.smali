.class public final LR1/v;
.super Ljava/lang/Object;

# interfaces
.implements LI1/e;


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method public final b(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method public final c(Ljava/io/InputStream;LL1/g;)I
    .locals 0

    new-instance p2, La0/g;

    invoke-direct {p2, p1}, La0/g;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Orientation"

    invoke-virtual {p2, p1}, La0/g;->c(Ljava/lang/String;)La0/c;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p2, La0/g;->f:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, La0/c;->e(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public final d(Ljava/nio/ByteBuffer;LL1/g;)I
    .locals 1

    sget-object v0, Ld2/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ld2/a;

    invoke-direct {v0, p1}, Ld2/a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0, p2}, LR1/v;->c(Ljava/io/InputStream;LL1/g;)I

    move-result p1

    return p1
.end method
