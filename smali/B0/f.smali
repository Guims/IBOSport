.class public abstract LB0/f;
.super Ljava/lang/Object;

# interfaces
.implements LE0/p;


# instance fields
.field public final b:J

.field public final q:Landroidx/media3/datasource/DataSpec;

.field public final r:I

.field public final s:Landroidx/media3/common/Format;

.field public final t:I

.field public final u:Ljava/lang/Object;

.field public final v:J

.field public final w:J

.field public final x:Landroidx/media3/datasource/StatsDataSource;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object v0, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iput p3, p0, LB0/f;->r:I

    iput-object p4, p0, LB0/f;->s:Landroidx/media3/common/Format;

    iput p5, p0, LB0/f;->t:I

    iput-object p6, p0, LB0/f;->u:Ljava/lang/Object;

    iput-wide p7, p0, LB0/f;->v:J

    iput-wide p9, p0, LB0/f;->w:J

    sget-object p1, Landroidx/media3/exoplayer/source/v;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, LB0/f;->b:J

    return-void
.end method
