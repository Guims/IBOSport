.class public final LC5/a;
.super Ljava/lang/Object;

# interfaces
.implements LI0/r;
.implements LI0/s;
.implements Ls0/i;


# instance fields
.field public final synthetic b:I

.field public q:J

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, LC5/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LC5/a;->q:J

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, LC5/a;->b:I

    iput-wide p2, p0, LC5/a;->q:J

    iput-object p4, p0, LC5/a;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LI0/l;J)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LC5/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/a;->r:Ljava/lang/Object;

    iput-wide p2, p0, LC5/a;->q:J

    return-void
.end method

.method public constructor <init>(LI0/r;J)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, LC5/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/a;->r:Ljava/lang/Object;

    invoke-interface {p1}, LI0/r;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->d(Z)V

    iput-wide p2, p0, LC5/a;->q:J

    return-void
.end method

.method public constructor <init>(LK5/i;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LC5/a;->b:I

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/a;->r:Ljava/lang/Object;

    const/high16 p1, 0x40000

    int-to-long v0, p1

    iput-wide v0, p0, LC5/a;->q:J

    return-void
.end method


# virtual methods
.method public E()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public G()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public J(J)J
    .locals 0

    iget-object p1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast p1, LI0/l;

    iget p1, p1, LI0/l;->a:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public K(JJ)J
    .locals 0

    iget-object p1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast p1, LI0/l;

    iget p1, p1, LI0/l;->a:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public a(J)J
    .locals 2

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/l;

    iget-object v0, v0, LI0/l;->e:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    iget-wide v0, p0, LC5/a;->q:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public b([BIIZ)Z
    .locals 1

    iget-object p2, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast p2, LI0/r;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, LI0/r;->b([BIIZ)Z

    move-result p1

    return p1
.end method

.method public d([BIIZ)Z
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1, p2, p3, p4}, LI0/r;->d([BIIZ)Z

    move-result p1

    return p1
.end method

.method public e()J
    .locals 4

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0}, LI0/r;->e()J

    move-result-wide v0

    iget-wide v2, p0, LC5/a;->q:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public endTracks()V
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/s;

    invoke-interface {v0}, LI0/s;->endTracks()V

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1}, LI0/r;->f(I)V

    return-void
.end method

.method public g(JJ)J
    .locals 0

    iget-object p3, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast p3, LI0/l;

    iget-object p3, p3, LI0/l;->d:[J

    long-to-int p1, p1

    aget-wide p1, p3, p1

    return-wide p1
.end method

.method public getLength()J
    .locals 4

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0}, LI0/r;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, LC5/a;->q:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0}, LI0/r;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, LC5/a;->q:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1}, LI0/r;->h(I)I

    move-result p1

    return p1
.end method

.method public i([BII)I
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1, p2, p3}, LI0/r;->i([BII)I

    move-result p1

    return p1
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0}, LI0/r;->j()V

    return-void
.end method

.method public k(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public l(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public m(J)Lt0/j;
    .locals 6

    new-instance v0, Lt0/j;

    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LI0/l;

    iget-object v2, v1, LI0/l;->c:[J

    long-to-int p1, p1

    aget-wide v3, v2, p1

    iget-object p2, v1, LI0/l;->b:[I

    aget p1, p2, p1

    int-to-long p1, p1

    const/4 v5, 0x0

    move-wide v1, v3

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lt0/j;-><init>(JJLjava/lang/String;)V

    return-object v0
.end method

.method public n(I)V
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1}, LI0/r;->n(I)V

    return-void
.end method

.method public o([BII)V
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1, p2, p3}, LI0/r;->o([BII)V

    return-void
.end method

.method public p(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LC5/a;

    if-eqz v1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LC5/a;->p(I)V

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, LC5/a;->q:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, LC5/a;->q:J

    return-void
.end method

.method public q(I)I
    .locals 6

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LC5/a;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide v0, p0, LC5/a;->q:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, LC5/a;->q:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, LC5/a;->q:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, LC5/a;->q(I)I

    move-result p1

    iget-wide v0, p0, LC5/a;->q:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LC5/a;

    if-nez v0, :cond_0

    new-instance v0, LC5/a;

    invoke-direct {v0}, LC5/a;-><init>()V

    iput-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/r;

    invoke-interface {v0, p1, p2, p3}, LI0/r;->readFully([BII)V

    return-void
.end method

.method public s(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LC5/a;->r()V

    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LC5/a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LC5/a;->s(I)Z

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, LC5/a;->q:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public seekMap(LI0/F;)V
    .locals 2

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/s;

    new-instance v1, LQ0/c;

    invoke-direct {v1, p0, p1, p1}, LQ0/c;-><init>(LC5/a;LI0/F;LI0/F;)V

    invoke-interface {v0, v1}, LI0/s;->seekMap(LI0/F;)V

    return-void
.end method

.method public t(IZ)V
    .locals 9

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LC5/a;->r()V

    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LC5/a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, LC5/a;->t(IZ)V

    return-void

    :cond_0
    iget-wide v0, p0, LC5/a;->q:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    sub-long/2addr v7, v5

    and-long v5, v0, v7

    not-long v7, v7

    and-long/2addr v0, v7

    shl-long/2addr v0, v4

    or-long/2addr v0, v5

    iput-wide v0, p0, LC5/a;->q:J

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, LC5/a;->y(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, LC5/a;->p(I)V

    :goto_1
    if-nez v2, :cond_4

    iget-object p1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast p1, LC5/a;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, LC5/a;->r()V

    iget-object p1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast p1, LC5/a;

    invoke-virtual {p1, v3, v2}, LC5/a;->t(IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LC5/a;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LC5/a;

    if-nez v0, :cond_0

    iget-wide v0, p0, LC5/a;->q:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LC5/a;

    invoke-virtual {v1}, LC5/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LC5/a;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public track(II)LI0/L;
    .locals 1

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LI0/s;

    invoke-interface {v0, p1, p2}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    return-object p1
.end method

.method public u()Lw5/p;
    .locals 8

    new-instance v0, Lw5/o;

    invoke-direct {v0}, Lw5/o;-><init>()V

    :goto_0
    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LK5/i;

    iget-wide v2, p0, LC5/a;->q:J

    invoke-interface {v1, v2, v3}, LK5/i;->g(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, LC5/a;->q:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, LC5/a;->q:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lw5/o;->c()Lw5/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x4

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v2

    const/4 v5, -0x1

    const-string v6, "(this as java.lang.String).substring(startIndex)"

    const/4 v7, 0x0

    if-eq v2, v5, :cond_1

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lw5/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v5, ""

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Lw5/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5, v1}, Lw5/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public v(I)Z
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LC5/a;->r()V

    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LC5/a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LC5/a;->v(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, LC5/a;->q:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    not-long v8, v2

    and-long/2addr v4, v8

    iput-wide v4, p0, LC5/a;->q:J

    sub-long/2addr v2, v0

    and-long v0, v4, v2

    not-long v2, v2

    and-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, LC5/a;->q:J

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LC5/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, LC5/a;->s(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, LC5/a;->y(I)V

    :cond_2
    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LC5/a;

    invoke-virtual {v0, v7}, LC5/a;->v(I)Z

    :cond_3
    return p1
.end method

.method public w()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LC5/a;->q:J

    iget-object v0, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v0, LC5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LC5/a;->w()V

    :cond_0
    return-void
.end method

.method public x(JJ)J
    .locals 2

    iget-object p3, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast p3, LI0/l;

    iget-wide v0, p0, LC5/a;->q:J

    add-long/2addr p1, v0

    iget-object p3, p3, LI0/l;->e:[J

    const/4 p4, 0x1

    invoke-static {p3, p1, p2, p4}, Lk0/C;->e([JJZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public y(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LC5/a;->r()V

    iget-object v1, p0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LC5/a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, LC5/a;->y(I)V

    return-void

    :cond_0
    iget-wide v0, p0, LC5/a;->q:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, LC5/a;->q:J

    return-void
.end method
