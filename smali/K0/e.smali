.class public final LK0/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:LI0/L;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:[J

.field public m:[I


# direct methods
.method public constructor <init>(IIJILI0/L;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lk0/c;->d(Z)V

    iput-wide p3, p0, LK0/e;->d:J

    iput p5, p0, LK0/e;->e:I

    iput-object p6, p0, LK0/e;->a:LI0/L;

    if-ne p2, v0, :cond_2

    const/high16 p3, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 p3, 0x62770000

    :goto_1
    div-int/lit8 p4, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 p4, p4, 0x30

    or-int/2addr p1, p4

    or-int/2addr p3, p1

    iput p3, p0, LK0/e;->b:I

    if-ne p2, v0, :cond_3

    const/high16 p2, 0x62640000

    or-int/2addr p1, p2

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, LK0/e;->c:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, LK0/e;->k:J

    const/16 p1, 0x200

    new-array p2, p1, [J

    iput-object p2, p0, LK0/e;->l:[J

    new-array p1, p1, [I

    iput-object p1, p0, LK0/e;->m:[I

    return-void
.end method


# virtual methods
.method public final a(I)LI0/G;
    .locals 7

    new-instance v0, LI0/G;

    iget-object v1, p0, LK0/e;->m:[I

    aget v1, v1, p1

    int-to-long v1, v1

    iget-wide v3, p0, LK0/e;->d:J

    const/4 v5, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v5, p0, LK0/e;->e:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    mul-long/2addr v3, v1

    iget-object v1, p0, LK0/e;->l:[J

    aget-wide v5, v1, p1

    invoke-direct {v0, v3, v4, v5, v6}, LI0/G;-><init>(JJ)V

    return-object v0
.end method

.method public final b(J)LI0/E;
    .locals 5

    iget v0, p0, LK0/e;->j:I

    if-nez v0, :cond_0

    new-instance p1, LI0/E;

    new-instance p2, LI0/G;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, LK0/e;->k:J

    invoke-direct {p2, v0, v1, v2, v3}, LI0/G;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object p1

    :cond_0
    iget-wide v0, p0, LK0/e;->d:J

    const/4 v2, 0x1

    int-to-long v3, v2

    mul-long/2addr v0, v3

    iget v3, p0, LK0/e;->e:I

    int-to-long v3, v3

    div-long/2addr v0, v3

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, LK0/e;->m:[I

    invoke-static {p2, p1, v2, v2}, Lk0/C;->d([IIZZ)I

    move-result p2

    iget-object v0, p0, LK0/e;->m:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_1

    new-instance p1, LI0/E;

    invoke-virtual {p0, p2}, LK0/e;->a(I)LI0/G;

    move-result-object p2

    invoke-direct {p1, p2, p2}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, LK0/e;->a(I)LI0/G;

    move-result-object p1

    add-int/2addr p2, v2

    iget-object v0, p0, LK0/e;->l:[J

    array-length v0, v0

    if-ge p2, v0, :cond_2

    new-instance v0, LI0/E;

    invoke-virtual {p0, p2}, LK0/e;->a(I)LI0/G;

    move-result-object p2

    invoke-direct {v0, p1, p2}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object v0

    :cond_2
    new-instance p2, LI0/E;

    invoke-direct {p2, p1, p1}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object p2
.end method
