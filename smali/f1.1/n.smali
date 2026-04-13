.class public final synthetic Lf1/n;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/h;


# instance fields
.field public final synthetic b:Lf1/o;

.field public final synthetic q:J

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lf1/o;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/n;->b:Lf1/o;

    iput-wide p2, p0, Lf1/n;->q:J

    iput p4, p0, Lf1/n;->r:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    check-cast p1, Lf1/a;

    iget-object v0, p0, Lf1/n;->b:Lf1/o;

    iget-object v1, v0, Lf1/o;->h:Landroidx/media3/common/Format;

    invoke-static {v1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v1, p1, Lf1/a;->a:Lp3/H;

    iget-wide v2, p1, Lf1/a;->c:J

    invoke-static {v1, v2, v3}, Lu2/j;->n(Lp3/H;J)[B

    move-result-object v1

    iget-object v2, v0, Lf1/o;->c:Lk0/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lk0/u;->E([BI)V

    iget-object v3, v0, Lf1/o;->a:LI0/L;

    array-length v4, v1

    invoke-interface {v3, v2, v4}, LI0/L;->sampleData(Lk0/u;I)V

    iget-wide v2, p1, Lf1/a;->b:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    iget-wide v4, p0, Lf1/n;->q:J

    const-wide v6, 0x7fffffffffffffffL

    if-nez p1, :cond_1

    iget-object p1, v0, Lf1/o;->h:Landroidx/media3/common/Format;

    iget-wide v2, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long p1, v2, v6

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->j(Z)V

    :goto_1
    move-wide v7, v4

    goto :goto_2

    :cond_1
    iget-object p1, v0, Lf1/o;->h:Landroidx/media3/common/Format;

    iget-wide v8, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long p1, v8, v6

    if-nez p1, :cond_2

    add-long/2addr v4, v2

    goto :goto_1

    :cond_2
    add-long v4, v2, v8

    goto :goto_1

    :goto_2
    iget-object v6, v0, Lf1/o;->a:LI0/L;

    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v9, p0, Lf1/n;->r:I

    invoke-interface/range {v6 .. v12}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    return-void
.end method
