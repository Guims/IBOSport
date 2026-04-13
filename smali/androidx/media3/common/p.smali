.class public final synthetic Landroidx/media3/common/p;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic q:Z

.field public final synthetic r:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic s:I

.field public final synthetic t:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/p;->b:Landroidx/media3/common/SimpleBasePlayer;

    iput-boolean p2, p0, Landroidx/media3/common/p;->q:Z

    iput-object p3, p0, Landroidx/media3/common/p;->r:Landroidx/media3/common/SimpleBasePlayer$State;

    iput p4, p0, Landroidx/media3/common/p;->s:I

    iput-wide p5, p0, Landroidx/media3/common/p;->t:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget v3, p0, Landroidx/media3/common/p;->s:I

    iget-wide v4, p0, Landroidx/media3/common/p;->t:J

    iget-object v0, p0, Landroidx/media3/common/p;->b:Landroidx/media3/common/SimpleBasePlayer;

    iget-boolean v1, p0, Landroidx/media3/common/p;->q:Z

    iget-object v2, p0, Landroidx/media3/common/p;->r:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->e(Landroidx/media3/common/SimpleBasePlayer;ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method
