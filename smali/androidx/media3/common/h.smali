.class public final synthetic Landroidx/media3/common/h;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic q:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/h;->b:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/h;->q:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object p3, p0, Landroidx/media3/common/h;->r:Ljava/util/List;

    iput p4, p0, Landroidx/media3/common/h;->s:I

    iput p5, p0, Landroidx/media3/common/h;->t:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/media3/common/h;->s:I

    iget v1, p0, Landroidx/media3/common/h;->t:I

    iget-object v2, p0, Landroidx/media3/common/h;->b:Landroidx/media3/common/SimpleBasePlayer;

    iget-object v3, p0, Landroidx/media3/common/h;->q:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v4, p0, Landroidx/media3/common/h;->r:Ljava/util/List;

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->o(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method
