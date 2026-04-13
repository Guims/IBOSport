.class public final Lf1/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lp3/H;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Lf1/a;->a:Lp3/H;

    iput-wide p2, p0, Lf1/a;->b:J

    iput-wide p4, p0, Lf1/a;->c:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    cmp-long p1, p4, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p2, p4

    :cond_1
    :goto_0
    iput-wide v0, p0, Lf1/a;->d:J

    return-void
.end method
