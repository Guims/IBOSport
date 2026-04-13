.class public final Lo1/e;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:Lo1/f;

.field public final b:Lk0/u;

.field public final c:Lk0/u;

.field public final d:LI0/N;

.field public e:LI0/s;

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lo1/f;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lo1/f;-><init>(Ljava/lang/String;ZI)V

    iput-object p1, p0, Lo1/e;->a:Lo1/f;

    new-instance p1, Lk0/u;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lo1/e;->b:Lk0/u;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo1/e;->g:J

    new-instance p1, Lk0/u;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lo1/e;->c:Lk0/u;

    new-instance v0, LI0/N;

    iget-object p1, p1, Lk0/u;->a:[B

    array-length v1, p1

    invoke-direct {v0, p1, v1}, LI0/N;-><init>([BI)V

    iput-object v0, p0, Lo1/e;->d:LI0/N;

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lo1/e;->c:Lk0/u;

    iget-object v3, v2, Lk0/u;->a:[B

    const/16 v4, 0xa

    invoke-interface {p1, v3, v0, v4}, LI0/r;->o([BII)V

    invoke-virtual {v2, v0}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->x()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_5

    invoke-interface {p1}, LI0/r;->j()V

    invoke-interface {p1, v1}, LI0/r;->f(I)V

    iget-wide v2, p0, Lo1/e;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Lo1/e;->g:J

    :cond_0
    const/4 v3, 0x0

    move v2, v1

    move v0, v3

    move v4, v0

    :cond_1
    iget-object v5, p0, Lo1/e;->c:Lk0/u;

    iget-object v6, v5, Lk0/u;->a:[B

    const/4 v7, 0x2

    invoke-interface {p1, v6, v3, v7}, LI0/r;->o([BII)V

    invoke-virtual {v5, v3}, Lk0/u;->G(I)V

    invoke-virtual {v5}, Lk0/u;->A()I

    move-result v6

    const v7, 0xfff6

    and-int/2addr v6, v7

    const v7, 0xfff0

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    add-int/2addr v0, v6

    const/4 v7, 0x4

    if-lt v0, v7, :cond_2

    const/16 v8, 0xbc

    if-le v4, v8, :cond_2

    return v6

    :cond_2
    iget-object v5, v5, Lk0/u;->a:[B

    invoke-interface {p1, v5, v3, v7}, LI0/r;->o([BII)V

    const/16 v5, 0xe

    iget-object v6, p0, Lo1/e;->d:LI0/N;

    invoke-virtual {v6, v5}, LI0/N;->q(I)V

    const/16 v5, 0xd

    invoke-virtual {v6, v5}, LI0/N;->i(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, LI0/r;->j()V

    invoke-interface {p1, v2}, LI0/r;->f(I)V

    :goto_1
    move v0, v3

    move v4, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v5, -0x6

    invoke-interface {p1, v6}, LI0/r;->f(I)V

    add-int/2addr v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, LI0/r;->j()V

    invoke-interface {p1, v2}, LI0/r;->f(I)V

    goto :goto_1

    :goto_2
    sub-int v5, v2, v1

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_1

    return v3

    :cond_5
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lk0/u;->H(I)V

    invoke-virtual {v2}, Lk0/u;->t()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-interface {p1, v2}, LI0/r;->f(I)V

    goto/16 :goto_0
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 8

    iget-object p2, p0, Lo1/e;->e:LI0/s;

    invoke-static {p2}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {p1}, LI0/r;->getLength()J

    iget-object p2, p0, Lo1/e;->b:Lk0/u;

    iget-object v0, p2, Lk0/u;->a:[B

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Lo1/e;->i:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lo1/e;->e:LI0/s;

    new-instance v5, LI0/v;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v5, v6, v7}, LI0/v;-><init>(J)V

    invoke-interface {v4, v5}, LI0/s;->seekMap(LI0/F;)V

    iput-boolean v1, p0, Lo1/e;->i:Z

    :goto_1
    if-eqz v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2, v2}, Lk0/u;->G(I)V

    invoke-virtual {p2, p1}, Lk0/u;->F(I)V

    iget-boolean p1, p0, Lo1/e;->h:Z

    iget-object v0, p0, Lo1/e;->a:Lo1/f;

    if-nez p1, :cond_3

    iget-wide v3, p0, Lo1/e;->f:J

    iput-wide v3, v0, Lo1/f;->t:J

    iput-boolean v1, p0, Lo1/e;->h:Z

    :cond_3
    invoke-virtual {v0, p2}, Lo1/f;->c(Lk0/u;)V

    return v2
.end method

.method public final f(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo1/e;->h:Z

    iget-object p1, p0, Lo1/e;->a:Lo1/f;

    invoke-virtual {p1}, Lo1/f;->b()V

    iput-wide p3, p0, Lo1/e;->f:J

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 3

    iput-object p1, p0, Lo1/e;->e:LI0/s;

    new-instance v0, Lo1/K;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo1/K;-><init>(II)V

    iget-object v1, p0, Lo1/e;->a:Lo1/f;

    invoke-virtual {v1, p1, v0}, Lo1/f;->f(LI0/s;Lo1/K;)V

    invoke-interface {p1}, LI0/s;->endTracks()V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
