.class public final LK5/A;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:LK5/A;

.field public g:LK5/A;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, LK5/A;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, LK5/A;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LK5/A;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/A;->a:[B

    iput p2, p0, LK5/A;->b:I

    iput p3, p0, LK5/A;->c:I

    iput-boolean p4, p0, LK5/A;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, LK5/A;->e:Z

    return-void
.end method


# virtual methods
.method public final a()LK5/A;
    .locals 4

    iget-object v0, p0, LK5/A;->f:LK5/A;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, LK5/A;->g:LK5/A;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LK5/A;->f:LK5/A;

    iput-object v3, v2, LK5/A;->f:LK5/A;

    iget-object v2, p0, LK5/A;->f:LK5/A;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LK5/A;->g:LK5/A;

    iput-object v3, v2, LK5/A;->g:LK5/A;

    iput-object v1, p0, LK5/A;->f:LK5/A;

    iput-object v1, p0, LK5/A;->g:LK5/A;

    return-object v0
.end method

.method public final b(LK5/A;)V
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, LK5/A;->g:LK5/A;

    iget-object v0, p0, LK5/A;->f:LK5/A;

    iput-object v0, p1, LK5/A;->f:LK5/A;

    iget-object v0, p0, LK5/A;->f:LK5/A;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iput-object p1, v0, LK5/A;->g:LK5/A;

    iput-object p1, p0, LK5/A;->f:LK5/A;

    return-void
.end method

.method public final c()LK5/A;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, LK5/A;->d:Z

    new-instance v1, LK5/A;

    iget v2, p0, LK5/A;->b:I

    iget v3, p0, LK5/A;->c:I

    iget-object v4, p0, LK5/A;->a:[B

    invoke-direct {v1, v4, v2, v3, v0}, LK5/A;-><init>([BIIZ)V

    return-object v1
.end method

.method public final d(LK5/A;I)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LK5/A;->a:[B

    iget-boolean v1, p1, LK5/A;->e:Z

    if-eqz v1, :cond_3

    iget v1, p1, LK5/A;->c:I

    add-int v2, v1, p2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_2

    iget-boolean v4, p1, LK5/A;->d:Z

    if-nez v4, :cond_1

    iget v4, p1, LK5/A;->b:I

    sub-int/2addr v2, v4

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v0, v1}, LT4/f;->x([BII[BI)V

    iget v1, p1, LK5/A;->c:I

    iget v3, p1, LK5/A;->b:I

    sub-int/2addr v1, v3

    iput v1, p1, LK5/A;->c:I

    iput v2, p1, LK5/A;->b:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget v1, p1, LK5/A;->c:I

    iget v2, p0, LK5/A;->b:I

    add-int v3, v2, p2

    iget-object v4, p0, LK5/A;->a:[B

    invoke-static {v4, v1, v2, v0, v3}, LT4/f;->x([BII[BI)V

    iget v0, p1, LK5/A;->c:I

    add-int/2addr v0, p2

    iput v0, p1, LK5/A;->c:I

    iget p1, p0, LK5/A;->b:I

    add-int/2addr p1, p2

    iput p1, p0, LK5/A;->b:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
