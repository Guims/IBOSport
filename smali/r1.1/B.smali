.class public abstract synthetic Lr1/B;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void
.end method

.method public static bridge synthetic b(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;Lp2/a;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
