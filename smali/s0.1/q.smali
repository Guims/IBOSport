.class public final Ls0/q;
.super Ljava/lang/Object;

# interfaces
.implements LI0/L;


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/e0;

.field public final b:Landroidx/media3/exoplayer/FormatHolder;

.field public final c:LR0/a;

.field public d:J

.field public final synthetic e:Ls0/r;


# direct methods
.method public constructor <init>(Ls0/r;LE0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/q;->e:Ls0/r;

    invoke-static {p2}, Landroidx/media3/exoplayer/source/e0;->createWithoutDrm(LE0/b;)Landroidx/media3/exoplayer/source/e0;

    move-result-object p1

    iput-object p1, p0, Ls0/q;->a:Landroidx/media3/exoplayer/source/e0;

    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Ls0/q;->b:Landroidx/media3/exoplayer/FormatHolder;

    new-instance p1, LR0/a;

    invoke-direct {p1}, LR0/a;-><init>()V

    iput-object p1, p0, Ls0/q;->c:LR0/a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ls0/q;->d:J

    return-void
.end method


# virtual methods
.method public final format(Landroidx/media3/common/Format;)V
    .locals 1

    iget-object v0, p0, Ls0/q;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/e0;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 0

    iget-object p4, p0, Ls0/q;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-interface {p4, p1, p2, p3}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public final sampleData(Lk0/u;II)V
    .locals 0

    iget-object p3, p0, Ls0/q;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-interface {p3, p1, p2}, LI0/L;->sampleData(Lk0/u;I)V

    return-void
.end method

.method public final sampleMetadata(JIIILI0/K;)V
    .locals 7

    iget-object v0, p0, Ls0/q;->a:Landroidx/media3/exoplayer/source/e0;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/source/e0;->sampleMetadata(JIIILI0/K;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Ls0/q;->a:Landroidx/media3/exoplayer/source/e0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/e0;->isReady(Z)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Ls0/q;->c:LR0/a;

    invoke-virtual {p3}, Lp0/f;->k()V

    iget-object p4, p0, Ls0/q;->b:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {p1, p4, p3, p2, p2}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_1

    invoke-virtual {p3}, Lp0/f;->n()V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget-wide p4, p3, Lp0/f;->v:J

    iget-object p1, p0, Ls0/q;->e:Ls0/r;

    iget-object p6, p1, Ls0/r;->r:LT0/b;

    invoke-virtual {p6, p3}, Lcom/bumptech/glide/c;->e(LR0/a;)Landroidx/media3/common/Metadata;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3, p2}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object p2

    check-cast p2, LT0/a;

    iget-object p3, p2, LT0/a;->b:Ljava/lang/String;

    iget-object p6, p2, LT0/a;->q:Ljava/lang/String;

    const-string v0, "urn:mpeg:dash:event:2012"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "1"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "2"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "3"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    :cond_4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object p2, p2, LT0/a;->t:[B

    invoke-static {p2}, Lk0/C;->n([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lk0/C;->T(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide p2, v0

    :goto_2
    cmp-long p6, p2, v0

    if-nez p6, :cond_5

    goto :goto_0

    :cond_5
    new-instance p6, Ls0/p;

    invoke-direct {p6, p4, p5, p2, p3}, Ls0/p;-><init>(JJ)V

    iget-object p1, p1, Ls0/r;->s:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->discardToRead()V

    return-void
.end method
