.class public final LE4/c;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/b;
.implements Lz4/e;
.implements Lz4/m;


# instance fields
.field public final synthetic b:Lib/player/pages/playlist/PlaylistActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/playlist/PlaylistActivity;)V
    .locals 0

    iput-object p1, p0, LE4/c;->b:Lib/player/pages/playlist/PlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, LE4/c;->b:Lib/player/pages/playlist/PlaylistActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lib/player/pages/playlist/PlaylistActivity;->G0:Z

    iget-object v2, v0, Lib/player/pages/playlist/PlaylistActivity;->D0:Lz4/f;

    invoke-virtual {v2, v1, v1}, Landroidx/fragment/app/m;->P(ZZ)V

    invoke-virtual {v0}, Lib/player/base/k;->O()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LE4/c;->b:Lib/player/pages/playlist/PlaylistActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LE4/c;->b:Lib/player/pages/playlist/PlaylistActivity;

    iput v0, v1, Lib/player/pages/playlist/PlaylistActivity;->I0:I

    invoke-virtual {v1}, Lib/player/pages/playlist/PlaylistActivity;->a0()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LE4/c;->b:Lib/player/pages/playlist/PlaylistActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
