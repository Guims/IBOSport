.class public final Lv0/h;
.super LB0/b;


# instance fields
.field public final s:Ljava/util/List;

.field public final t:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, LB0/b;-><init>(JJ)V

    iput-wide p1, p0, Lv0/h;->t:J

    iput-object p3, p0, Lv0/h;->s:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 4

    invoke-virtual {p0}, LB0/b;->a()V

    iget-wide v0, p0, LB0/b;->r:J

    long-to-int v0, v0

    iget-object v1, p0, Lv0/h;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/g;

    iget-wide v0, v0, Lw0/g;->t:J

    iget-wide v2, p0, Lv0/h;->t:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final m()J
    .locals 5

    invoke-virtual {p0}, LB0/b;->a()V

    iget-wide v0, p0, LB0/b;->r:J

    long-to-int v0, v0

    iget-object v1, p0, Lv0/h;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/g;

    iget-wide v1, p0, Lv0/h;->t:J

    iget-wide v3, v0, Lw0/g;->t:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lw0/g;->r:J

    add-long/2addr v1, v3

    return-wide v1
.end method
