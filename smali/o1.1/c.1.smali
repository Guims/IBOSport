.class public final Lo1/c;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:Lo1/d;

.field public final b:Lk0/u;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo1/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo1/d;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo1/c;->a:Lo1/d;

    new-instance v0, Lk0/u;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lk0/u;-><init>(I)V

    iput-object v0, p0, Lo1/c;->b:Lk0/u;

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 14

    new-instance v0, Lk0/u;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lk0/u;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Lk0/u;->a:[B

    invoke-interface {p1, v4, v2, v1}, LI0/r;->o([BII)V

    invoke-virtual {v0, v2}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->x()I

    move-result v4

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v4, v5, :cond_7

    invoke-interface {p1}, LI0/r;->j()V

    invoke-interface {p1, v3}, LI0/r;->f(I)V

    move v1, v2

    move v4, v3

    :goto_1
    iget-object v5, v0, Lk0/u;->a:[B

    const/4 v7, 0x7

    invoke-interface {p1, v5, v2, v7}, LI0/r;->o([BII)V

    invoke-virtual {v0, v2}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->A()I

    move-result v5

    const v8, 0xac40

    const v9, 0xac41

    if-eq v5, v8, :cond_1

    if-eq v5, v9, :cond_1

    invoke-interface {p1}, LI0/r;->j()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {p1, v4}, LI0/r;->f(I)V

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    add-int/2addr v1, v8

    const/4 v10, 0x4

    if-lt v1, v10, :cond_2

    return v8

    :cond_2
    iget-object v8, v0, Lk0/u;->a:[B

    array-length v11, v8

    const/4 v12, -0x1

    if-ge v11, v7, :cond_3

    move v11, v12

    goto :goto_3

    :cond_3
    const/4 v11, 0x2

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    aget-byte v13, v8, v6

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v11, v13

    const v13, 0xffff

    if-ne v11, v13, :cond_4

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    const/4 v11, 0x5

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x6

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    or-int v11, v10, v8

    goto :goto_2

    :cond_4
    move v7, v10

    :goto_2
    if-ne v5, v9, :cond_5

    add-int/lit8 v7, v7, 0x2

    :cond_5
    add-int/2addr v11, v7

    :goto_3
    if-ne v11, v12, :cond_6

    :goto_4
    return v2

    :cond_6
    add-int/lit8 v11, v11, -0x7

    invoke-interface {p1, v11}, LI0/r;->f(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v6}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->t()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    invoke-interface {p1, v4}, LI0/r;->f(I)V

    goto/16 :goto_0
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 5

    iget-object p2, p0, Lo1/c;->b:Lk0/u;

    iget-object v0, p2, Lk0/u;->a:[B

    const/16 v1, 0x4000

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, v2}, Lk0/u;->G(I)V

    invoke-virtual {p2, p1}, Lk0/u;->F(I)V

    iget-boolean p1, p0, Lo1/c;->c:Z

    iget-object v0, p0, Lo1/c;->a:Lo1/d;

    if-nez p1, :cond_1

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lo1/d;->m:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo1/c;->c:Z

    :cond_1
    invoke-virtual {v0, p2}, Lo1/d;->c(Lk0/u;)V

    return v2
.end method

.method public final f(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo1/c;->c:Z

    iget-object p1, p0, Lo1/c;->a:Lo1/d;

    invoke-virtual {p1}, Lo1/d;->b()V

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 3

    new-instance v0, Lo1/K;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo1/K;-><init>(II)V

    iget-object v1, p0, Lo1/c;->a:Lo1/d;

    invoke-virtual {v1, p1, v0}, Lo1/d;->f(LI0/s;Lo1/K;)V

    invoke-interface {p1}, LI0/s;->endTracks()V

    new-instance v0, LI0/v;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, LI0/v;-><init>(J)V

    invoke-interface {p1, v0}, LI0/s;->seekMap(LI0/F;)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
