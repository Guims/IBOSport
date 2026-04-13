.class public abstract Lt0/m;
.super Ljava/lang/Object;


# instance fields
.field public final b:Landroidx/media3/common/Format;

.field public final q:Lp3/H;

.field public final r:J

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Ljava/util/List;

.field public final v:Lt0/j;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Ljava/util/List;Lt0/s;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->d(Z)V

    iput-object p1, p0, Lt0/m;->b:Landroidx/media3/common/Format;

    invoke-static {p2}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Lt0/m;->q:Lp3/H;

    if-nez p4, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lt0/m;->s:Ljava/util/List;

    iput-object p5, p0, Lt0/m;->t:Ljava/util/List;

    iput-object p6, p0, Lt0/m;->u:Ljava/util/List;

    invoke-virtual {p3, p0}, Lt0/s;->a(Lt0/m;)Lt0/j;

    move-result-object p1

    iput-object p1, p0, Lt0/m;->v:Lt0/j;

    iget-wide v0, p3, Lt0/s;->c:J

    iget-wide v4, p3, Lt0/s;->b:J

    sget p1, Lk0/C;->a:I

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v6}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    iput-wide p1, p0, Lt0/m;->r:J

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ls0/i;
.end method

.method public abstract d()Lt0/j;
.end method
