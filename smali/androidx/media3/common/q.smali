.class public final synthetic Landroidx/media3/common/q;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic q:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/q;->q:Landroidx/media3/common/SimpleBasePlayer$State;

    iput p3, p0, Landroidx/media3/common/q;->r:I

    iput p4, p0, Landroidx/media3/common/q;->s:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/media3/common/q;->r:I

    iget v1, p0, Landroidx/media3/common/q;->s:I

    iget-object v2, p0, Landroidx/media3/common/q;->b:Landroidx/media3/common/SimpleBasePlayer;

    iget-object v3, p0, Landroidx/media3/common/q;->q:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static {v2, v3, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->c(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method
