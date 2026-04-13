.class public final Lo1/G;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/L;


# instance fields
.field public final a:Lo1/F;

.field public final b:Lk0/u;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lo1/F;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/G;->a:Lo1/F;

    new-instance p1, Lk0/u;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lo1/G;->b:Lk0/u;

    return-void
.end method


# virtual methods
.method public final a(Lk0/z;LI0/s;Lo1/K;)V
    .locals 1

    iget-object v0, p0, Lo1/G;->a:Lo1/F;

    invoke-interface {v0, p1, p2, p3}, Lo1/F;->a(Lk0/z;LI0/s;Lo1/K;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo1/G;->f:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo1/G;->f:Z

    return-void
.end method

.method public final c(Lk0/u;I)V
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v2, -0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lk0/u;->u()I

    move-result v3

    iget v4, p1, Lk0/u;->b:I

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-boolean v3, p0, Lo1/G;->f:Z

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    goto/16 :goto_5

    :cond_2
    iput-boolean v1, p0, Lo1/G;->f:Z

    invoke-virtual {p1, v4}, Lk0/u;->G(I)V

    iput v1, p0, Lo1/G;->d:I

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result p2

    if-lez p2, :cond_9

    iget p2, p0, Lo1/G;->d:I

    const/4 v3, 0x3

    iget-object v4, p0, Lo1/G;->b:Lk0/u;

    if-ge p2, v3, :cond_6

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lk0/u;->u()I

    move-result p2

    iget v5, p1, Lk0/u;->b:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Lk0/u;->G(I)V

    const/16 v5, 0xff

    if-ne p2, v5, :cond_4

    iput-boolean v0, p0, Lo1/G;->f:Z

    return-void

    :cond_4
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result p2

    iget v5, p0, Lo1/G;->d:I

    rsub-int/lit8 v5, v5, 0x3

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v5, v4, Lk0/u;->a:[B

    iget v6, p0, Lo1/G;->d:I

    invoke-virtual {p1, v5, v6, p2}, Lk0/u;->e([BII)V

    iget v5, p0, Lo1/G;->d:I

    add-int/2addr v5, p2

    iput v5, p0, Lo1/G;->d:I

    if-ne v5, v3, :cond_3

    invoke-virtual {v4, v1}, Lk0/u;->G(I)V

    invoke-virtual {v4, v3}, Lk0/u;->F(I)V

    invoke-virtual {v4, v0}, Lk0/u;->H(I)V

    invoke-virtual {v4}, Lk0/u;->u()I

    move-result p2

    invoke-virtual {v4}, Lk0/u;->u()I

    move-result v5

    and-int/lit16 v6, p2, 0x80

    if-eqz v6, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    iput-boolean v6, p0, Lo1/G;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v5

    add-int/2addr p2, v3

    iput p2, p0, Lo1/G;->c:I

    iget-object v3, v4, Lk0/u;->a:[B

    array-length v5, v3

    if-ge v5, p2, :cond_3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v3, 0x1002

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v4, p2}, Lk0/u;->b(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result p2

    iget v3, p0, Lo1/G;->c:I

    iget v5, p0, Lo1/G;->d:I

    sub-int/2addr v3, v5

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, v4, Lk0/u;->a:[B

    iget v5, p0, Lo1/G;->d:I

    invoke-virtual {p1, v3, v5, p2}, Lk0/u;->e([BII)V

    iget v3, p0, Lo1/G;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Lo1/G;->d:I

    iget p2, p0, Lo1/G;->c:I

    if-ne v3, p2, :cond_3

    iget-boolean v3, p0, Lo1/G;->e:Z

    if-eqz v3, :cond_8

    iget-object v3, v4, Lk0/u;->a:[B

    invoke-static {v1, p2, v2, v3}, Lk0/C;->l(III[B)I

    move-result p2

    if-eqz p2, :cond_7

    iput-boolean v0, p0, Lo1/G;->f:Z

    return-void

    :cond_7
    iget p2, p0, Lo1/G;->c:I

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v4, p2}, Lk0/u;->F(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4, p2}, Lk0/u;->F(I)V

    :goto_4
    invoke-virtual {v4, v1}, Lk0/u;->G(I)V

    iget-object p2, p0, Lo1/G;->a:Lo1/F;

    invoke-interface {p2, v4}, Lo1/F;->c(Lk0/u;)V

    iput v1, p0, Lo1/G;->d:I

    goto/16 :goto_2

    :cond_9
    :goto_5
    return-void
.end method
