.class public final synthetic Lr1/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lr1/p;

.field public final synthetic q:Landroidx/media3/common/Player;

.field public final synthetic r:Landroidx/media3/common/TrackGroup;

.field public final synthetic s:Lr1/n;


# direct methods
.method public synthetic constructor <init>(Lr1/p;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Lr1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/o;->b:Lr1/p;

    iput-object p2, p0, Lr1/o;->q:Landroidx/media3/common/Player;

    iput-object p3, p0, Lr1/o;->r:Landroidx/media3/common/TrackGroup;

    iput-object p4, p0, Lr1/o;->s:Lr1/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/16 p1, 0x1d

    iget-object v0, p0, Lr1/o;->q:Landroidx/media3/common/Player;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    new-instance v1, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v2, p0, Lr1/o;->s:Lr1/n;

    iget v3, v2, Lr1/n;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v3

    iget-object v4, p0, Lr1/o;->r:Landroidx/media3/common/TrackGroup;

    invoke-direct {v1, v4, v3}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    iget-object v1, v2, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object p1, v2, Lr1/n;->c:Ljava/lang/String;

    iget-object v0, p0, Lr1/o;->b:Lr1/p;

    invoke-virtual {v0, p1}, Lr1/p;->m(Ljava/lang/String;)V

    iget-object p1, v0, Lr1/p;->e:Lr1/r;

    iget-object p1, p1, Lr1/r;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
