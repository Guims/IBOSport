.class public final synthetic LE4/b;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/n;
.implements Lr2/b;
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LE4/b;->b:I

    iput-object p1, p0, LE4/b;->q:Ljava/lang/Object;

    iput-object p2, p0, LE4/b;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lib/player/pages/playlist/PlaylistActivity;ILib/player/models/AppInfoModel$UrlModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/b;->q:Ljava/lang/Object;

    iput p2, p0, LE4/b;->b:I

    iput-object p3, p0, LE4/b;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LE4/b;->q:Ljava/lang/Object;

    iput-object p3, p0, LE4/b;->r:Ljava/lang/Object;

    iput p2, p0, LE4/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-object v0, p0, LE4/b;->q:Ljava/lang/Object;

    check-cast v0, Lz4/h;

    iget-object v1, p0, LE4/b;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget v2, p0, LE4/b;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lz4/h;->N0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getRecent_channels_removed()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0, v3, v3}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_0
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LE4/b;->q:Ljava/lang/Object;

    check-cast v0, LM3/c;

    iget-object v1, p0, LE4/b;->r:Ljava/lang/Object;

    check-cast v1, Lj2/j;

    iget-object v0, v0, LM3/c;->d:Ljava/lang/Object;

    check-cast v0, LJ/l;

    iget v2, p0, LE4/b;->b:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LJ/l;->a0(Lj2/j;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LE4/b;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, p0, LE4/b;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget v2, p0, LE4/b;->b:I

    invoke-static {v2, v0, v1, p1}, Landroidx/media3/common/SimpleBasePlayer;->F(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method
