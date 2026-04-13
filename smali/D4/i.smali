.class public final synthetic LD4/i;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/movie/MovieMobilePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/movie/MovieMobilePlayerActivity;I)V
    .locals 0

    iput p2, p0, LD4/i;->b:I

    iput-object p1, p0, LD4/i;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget v0, p0, LD4/i;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD4/i;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->E0:Lib/player/base/helper/w;

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->q0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LD4/i;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->E0:Lib/player/base/helper/w;

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->q0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LD4/i;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->E0:Lib/player/base/helper/w;

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/base/helper/w;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lib/player/base/helper/w;->w0(Ljava/util/ArrayList;)V

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->F0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getMovie_is_added_to_fav()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_2
    iget-object v0, p0, LD4/i;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->E0:Lib/player/base/helper/w;

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/base/helper/w;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lib/player/base/helper/w;->w0(Ljava/util/ArrayList;)V

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->F0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getMovie_is_removed_from_fav()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
