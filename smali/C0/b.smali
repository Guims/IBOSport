.class public final LC0/b;
.super Lp0/i;

# interfaces
.implements Lf1/e;


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:Lf1/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf1/m;)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Lf1/i;

    new-array v0, v0, [Lf1/j;

    invoke-direct {p0, v1, v0}, Lp0/i;-><init>([Lp0/f;[Lp0/g;)V

    iput-object p1, p0, LC0/b;->o:Ljava/lang/String;

    iget p1, p0, Lp0/i;->g:I

    iget-object v0, p0, Lp0/i;->e:[Lp0/f;

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-static {p1}, Lk0/c;->j(Z)V

    array-length p1, v0

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v1, v0, v2

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Lp0/f;->m(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, LC0/b;->p:Lf1/m;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final f()Lp0/f;
    .locals 1

    new-instance v0, Lf1/i;

    invoke-direct {v0}, Lf1/i;-><init>()V

    return-object v0
.end method

.method public final g()Lp0/g;
    .locals 1

    new-instance v0, Lf1/c;

    invoke-direct {v0, p0}, Lf1/c;-><init>(LC0/b;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LC0/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/Throwable;)Lp0/d;
    .locals 2

    new-instance v0, Lf1/f;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final i(Lp0/f;Lp0/g;Z)Lp0/d;
    .locals 7

    check-cast p1, Lf1/i;

    check-cast p2, Lf1/j;

    :try_start_0
    iget-object v0, p1, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v2, p0, LC0/b;->p:Lf1/m;

    if-eqz p3, :cond_0

    invoke-interface {v2}, Lf1/m;->reset()V

    :cond_0
    const/4 p3, 0x0

    invoke-interface {v2, v1, p3, v0}, Lf1/m;->b([BII)Lf1/d;

    move-result-object v0

    iget-wide v1, p1, Lp0/f;->v:J

    iget-wide v3, p1, Lf1/i;->z:J

    iput-wide v1, p2, Lp0/g;->r:J

    iput-object v0, p2, Lf1/j;->u:Lf1/d;

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    iput-wide v1, p2, Lf1/j;->v:J

    iput-boolean p3, p2, Lp0/g;->t:Z
    :try_end_0
    .catch Lf1/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method
