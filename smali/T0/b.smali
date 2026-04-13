.class public final LT0/b;
.super Lcom/bumptech/glide/c;


# direct methods
.method public static s(Lk0/u;)LT0/a;
    .locals 8

    invoke-virtual {p0}, Lk0/u;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lk0/u;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lk0/u;->o()J

    move-result-wide v3

    invoke-virtual {p0}, Lk0/u;->o()J

    move-result-wide v5

    iget-object v0, p0, Lk0/u;->a:[B

    iget v7, p0, Lk0/u;->b:I

    iget p0, p0, Lk0/u;->c:I

    invoke-static {v0, v7, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    new-instance v0, LT0/a;

    invoke-direct/range {v0 .. v7}, LT0/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v0
.end method


# virtual methods
.method public final f(LR0/a;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 2

    new-instance p1, Landroidx/media3/common/Metadata;

    new-instance v0, Lk0/u;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lk0/u;-><init>([BI)V

    invoke-static {v0}, LT0/b;->s(Lk0/u;)LT0/a;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object p1
.end method
