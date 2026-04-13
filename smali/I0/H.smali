.class public final LI0/H;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:LI0/s;

.field public g:LI0/L;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LI0/H;->a:I

    iput p3, p0, LI0/H;->b:I

    iput-object p1, p0, LI0/H;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LI0/H;->b:I

    iget v3, p0, LI0/H;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-eq v2, v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {v4}, Lk0/c;->j(Z)V

    new-instance v4, Lk0/u;

    invoke-direct {v4, v2}, Lk0/u;-><init>(I)V

    iget-object v5, v4, Lk0/u;->a:[B

    invoke-interface {p1, v5, v1, v2}, LI0/r;->o([BII)V

    invoke-virtual {v4}, Lk0/u;->A()I

    move-result p1

    if-ne p1, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 9

    iget p2, p0, LI0/H;->e:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object p2, p0, LI0/H;->g:LI0/L;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {p2, p1, v3, v2}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, LI0/H;->e:I

    iget-object v2, p0, LI0/H;->g:LI0/L;

    iget v6, p0, LI0/H;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iput p2, p0, LI0/H;->d:I

    return p2

    :cond_2
    iget v0, p0, LI0/H;->d:I

    add-int/2addr v0, p1

    iput v0, p0, LI0/H;->d:I

    return p2
.end method

.method public final f(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, LI0/H;->e:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, LI0/H;->e:I

    const/4 p1, 0x0

    iput p1, p0, LI0/H;->d:I

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 2

    iput-object p1, p0, LI0/H;->f:LI0/s;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, LI0/H;->g:LI0/L;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v1, p0, LI0/H;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    invoke-interface {p1, v0}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iget-object p1, p0, LI0/H;->f:LI0/s;

    invoke-interface {p1}, LI0/s;->endTracks()V

    iget-object p1, p0, LI0/H;->f:LI0/s;

    new-instance v0, LI0/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, LI0/s;->seekMap(LI0/F;)V

    const/4 p1, 0x1

    iput p1, p0, LI0/H;->e:I

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
