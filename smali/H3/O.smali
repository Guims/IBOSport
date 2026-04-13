.class public final LH3/O;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:LH3/E0;

.field public d:LH3/F0;

.field public e:LH3/G0;

.field public f:LH3/J0;

.field public g:B


# virtual methods
.method public final a()LH3/P;
    .locals 10

    iget-byte v0, p0, LH3/O;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v5, p0, LH3/O;->b:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p0, LH3/O;->c:LH3/E0;

    if-eqz v6, :cond_1

    iget-object v7, p0, LH3/O;->d:LH3/F0;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, LH3/P;

    iget-wide v3, p0, LH3/O;->a:J

    iget-object v8, p0, LH3/O;->e:LH3/G0;

    iget-object v9, p0, LH3/O;->f:LH3/J0;

    invoke-direct/range {v2 .. v9}, LH3/P;-><init>(JLjava/lang/String;LH3/E0;LH3/F0;LH3/G0;LH3/J0;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, LH3/O;->g:B

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    const-string v1, " timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, LH3/O;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, LH3/O;->c:LH3/E0;

    if-nez v1, :cond_4

    const-string v1, " app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, LH3/O;->d:LH3/F0;

    if-nez v1, :cond_5

    const-string v1, " device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, LB/f;->p(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
