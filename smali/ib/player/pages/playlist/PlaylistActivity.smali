.class public Lib/player/pages/playlist/PlaylistActivity;
.super Lib/player/base/k;


# static fields
.field public static final synthetic J0:I


# instance fields
.field public A0:Ls4/w;

.field public B0:I

.field public C0:I

.field public D0:Lz4/f;

.field public E0:Lib/player/models/AppInfoModel$UrlModel;

.field public F0:Lpl/droidsonroids/gif/GifImageView;

.field public G0:Z

.field public H0:Lib/player/base/helper/c;

.field public I0:I

.field public g0:Lib/player/base/view/LiveVerticalGridView;

.field public h0:Landroid/widget/TextView;

.field public i0:Landroid/widget/TextView;

.field public j0:Landroid/widget/TextView;

.field public k0:Landroid/widget/TextView;

.field public l0:Landroid/widget/TextView;

.field public m0:Landroid/widget/TextView;

.field public n0:Landroid/widget/TextView;

.field public o0:Landroid/widget/TextView;

.field public p0:Landroid/widget/TextView;

.field public q0:Landroid/widget/TextView;

.field public r0:Landroid/widget/TextView;

.field public s0:Landroid/widget/TextView;

.field public t0:Landroid/widget/Button;

.field public u0:Landroid/widget/Button;

.field public v0:Landroid/widget/Button;

.field public w0:Landroid/webkit/WebView;

.field public w00:Landroid/widget/TextView;

.field public final x0:Ljava/text/SimpleDateFormat;

.field public y0:J

.field public z0:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lib/player/base/k;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->x0:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lib/player/pages/playlist/PlaylistActivity;->y0:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    iput v0, p0, Lib/player/pages/playlist/PlaylistActivity;->C0:I

    const/4 v1, 0x0

    iput-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->E0:Lib/player/models/AppInfoModel$UrlModel;

    iput-boolean v0, p0, Lib/player/pages/playlist/PlaylistActivity;->G0:Z

    iput v0, p0, Lib/player/pages/playlist/PlaylistActivity;->I0:I

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 4

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->F0:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "last_playlist_date"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    iget v0, p0, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "playlist_position"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lib/player/pages/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->F0:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_no_connection"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v2, p1, v1}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPlaylist_is_not_working()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lz4/B;

    invoke-direct {v2}, Lz4/B;-><init>()V

    iput-object p0, v2, Lz4/B;->D0:Landroid/content/Context;

    iput-object v0, v2, Lz4/B;->F0:Ljava/lang/String;

    new-instance v0, LA3/d;

    const/4 v3, 0x5

    invoke-direct {v0, v3, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, v2, Lz4/B;->C0:Lz4/A;

    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->F0:Lpl/droidsonroids/gif/GifImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final T()V
    .locals 0

    return-void
.end method

.method public final U()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->E0:Lib/player/models/AppInfoModel$UrlModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->A0:Ls4/w;

    iget-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    iput-object v1, v0, Ls4/w;->d:Ljava/util/List;

    invoke-virtual {v0}, Lv1/y;->d()V

    iget-object v0, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    iget-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lib/player/models/AppInfoModel;->setResult(Ljava/util/List;)V

    iget-object v0, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    iget-object v1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v0, v1}, Lib/player/base/helper/w;->g0(Lib/player/models/AppInfoModel;)V

    iget-object v0, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-static {v0, p0}, Lv4/c;->y(Lib/player/models/AppInfoModel;Landroid/content/Context;)V

    invoke-virtual {p0}, Lib/player/base/k;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final V(Lib/player/models/DataRequestBody;)V
    .locals 2

    const-string v0, "status"

    :try_start_0
    invoke-virtual {p1}, Lib/player/models/DataRequestBody;->getData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lib/player/models/DataRequestBody;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lib/player/models/AppInfoModel;->setIs_trial(I)V

    iget-object p1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lib/player/models/AppInfoModel;->setIs_google_pay(Z)V

    iget-object p1, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "is_changed"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    iget-object v0, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {p1, v0}, Lib/player/base/helper/w;->g0(Lib/player/models/AppInfoModel;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {p0, p1}, Lib/player/pages/playlist/PlaylistActivity;->y(Lib/player/models/AppInfoModel;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget p1, p0, Lib/player/pages/playlist/PlaylistActivity;->I0:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lib/player/pages/playlist/PlaylistActivity;->a0()V

    :cond_1
    return-void
.end method

.method public final Y()V
    .locals 2

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->F0:Lpl/droidsonroids/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a0()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lib/player/app/MyApp;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x2

    mul-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[\\n\\r]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "___"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0}, Lv4/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getPrice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lt4/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lib/player/models/DataRequestBody;

    invoke-direct {v3, v0}, Lib/player/models/DataRequestBody;-><init>(Ljava/lang/String;)V

    sget-object v0, Lib/player/base/n;->e:Ljava/lang/String;

    iget-object v5, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v5}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v5

    invoke-virtual {v5}, Lib/player/models/AppInfoModel$PayModel;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s%"

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lib/player/base/n;->j:Ljava/lang/String;

    iget-object v12, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v12}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v12

    invoke-virtual {v12}, Lib/player/models/AppInfoModel$PayModel;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    move-object v4, v0

    move-object v0, v2

    const/16 v2, 0xfa0

    move-object v1, p0

    invoke-virtual/range {v0 .. v11}, Lt4/e;->c(Lt4/d;ILib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lib/player/pages/playlist/PlaylistActivity;->I0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lib/player/pages/playlist/PlaylistActivity;->I0:I

    return-void
.end method

.method public final b0()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lib/player/pages/playlist/PlaylistActivity;->x0:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v3}, Lib/player/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lib/player/pages/playlist/PlaylistActivity;->y0:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-wide v0, p0, Lib/player/pages/playlist/PlaylistActivity;->y0:J

    :goto_0
    iget-object v2, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getIs_trial()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    iget-wide v4, p0, Lib/player/pages/playlist/PlaylistActivity;->y0:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v4, p0, Lib/player/pages/playlist/PlaylistActivity;->y0:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->i0:Landroid/widget/TextView;

    iget-object v2, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getTv_is_trial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->j0:Landroid/widget/TextView;

    iget-object v2, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getStr_trial_description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->j0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->i0:Landroid/widget/TextView;

    iget-object v2, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getTv_mac_expired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->j0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    iget-object v2, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/models/AppInfoModel$PayModel;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->i0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getMac_activated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->k0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getEnjoy_tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->j0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_4
    invoke-static {}, Lv4/c;->b()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final c0(I)V
    .locals 4

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_add"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v3, p1, v0}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v1, LE4/c;

    invoke-direct {v1, p0}, LE4/c;-><init>(Lib/player/pages/playlist/PlaylistActivity;)V

    new-instance v3, Lz4/f;

    invoke-direct {v3}, Lz4/f;-><init>()V

    iput-object p0, v3, Lz4/f;->M0:Landroid/content/Context;

    iput-object v1, v3, Lz4/f;->Y0:Lz4/e;

    iput p1, v3, Lz4/f;->R0:I

    iput-object v3, p0, Lib/player/pages/playlist/PlaylistActivity;->D0:Lz4/f;

    invoke-virtual {v3, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_0
    iget v0, p0, Lib/player/pages/playlist/PlaylistActivity;->C0:I

    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    :cond_1
    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    :pswitch_1
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v0, LB4/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_2
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    :pswitch_2
    iget v0, p0, Lib/player/pages/playlist/PlaylistActivity;->C0:I

    iget-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_6

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    :pswitch_3
    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v0, LB4/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_3
    iget-boolean v0, p0, Lib/player/pages/playlist/PlaylistActivity;->G0:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-static {p1, p1}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    const-string v1, "fragment_exit"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 p1, 0x0

    invoke-static {v0, v4, p1, v2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return v3

    :cond_5
    iget-object v0, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getExit()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getExit_description()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v5}, Lib/player/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lz4/n;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;

    move-result-object v0

    new-instance v2, LE4/c;

    invoke-direct {v2, p0}, LE4/c;-><init>(Lib/player/pages/playlist/PlaylistActivity;)V

    iput-object v2, v0, Lz4/n;->D0:Lz4/m;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return v3

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lf/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadQR(Lib/player/models/AppInfoModel;)V
    .locals 8

    invoke-virtual {p1}, Lib/player/models/AppInfoModel;->getQr_url()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://addmyplaylist.com/QR/?url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {p1}, Lib/player/models/AppInfoModel;->getDevice_key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lib/player/pages/playlist/PlaylistActivity;->w0:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lib/player/pages/playlist/PlaylistActivity;->w00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/AppInfoModel;->getQr_url_short()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lib/player/base/k;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lv4/c;->a(Lf/i;)V

    const p1, 0x7f0e0021

    invoke-virtual {p0, p1}, Lf/i;->setContentView(I)V

    iget-object p1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lib/player/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    invoke-static {p0}, Lib/player/base/helper/d;->g(Lib/player/base/k;)I

    move-result p1

    iput p1, p0, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    iput p1, p0, Lib/player/pages/playlist/PlaylistActivity;->C0:I

    :cond_0
    invoke-static {p0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    const p1, 0x7f0b0313

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lib/player/base/view/LiveVerticalGridView;

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    const p1, 0x7f0b03ef

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->h0:Landroid/widget/TextView;

    const p1, 0x7f0b0377

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->i0:Landroid/widget/TextView;

    const p1, 0x7f0b0382

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->j0:Landroid/widget/TextView;

    const p1, 0x7f0b037d

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->o0:Landroid/widget/TextView;

    const p1, 0x7f0b00a2

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->v0:Landroid/widget/Button;

    const v0, 0x7f0b036d

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->p0:Landroid/widget/TextView;

    const v0, 0x7f0b03de

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->k0:Landroid/widget/TextView;

    const v0, 0x7f0b0376

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->m0:Landroid/widget/TextView;

    const v0, 0x7f0b03df

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->n0:Landroid/widget/TextView;

    const v0, 0x7f0b040c

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->l0:Landroid/widget/TextView;

    const v0, 0x7f0b02ce

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->q0:Landroid/widget/TextView;

    const v0, 0x7f0b02cd

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->r0:Landroid/widget/TextView;

    const v0, 0x7f0b0383

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->s0:Landroid/widget/TextView;

    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->u0:Landroid/widget/Button;

    const v0, 0x7f0b01ea

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->w0:Landroid/webkit/WebView;

    const v0, 0x7f0b0371

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->w00:Landroid/widget/TextView;

    const v0, 0x7f0b03d2

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getPlaylists()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0304

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->F0:Lpl/droidsonroids/gif/GifImageView;

    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getPay_with_google_pay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getReload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LE4/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LE4/a;-><init>(Lib/player/pages/playlist/PlaylistActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->u0:Landroid/widget/Button;

    new-instance v0, LE4/a;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, LE4/a;-><init>(Lib/player/pages/playlist/PlaylistActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->w0:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->u0:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->o0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->w0:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->u0:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->o0:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->u0:Landroid/widget/Button;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getOpen_website()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->q0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {p0, v1}, Lib/player/pages/playlist/PlaylistActivity;->loadQR(Lib/player/models/AppInfoModel;)V

    invoke-virtual {v1}, Lib/player/models/AppInfoModel;->getNote_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->r0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-virtual {v1}, Lib/player/models/AppInfoModel;->getNote_content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->s0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getTo_add_manage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->m0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->h0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->n0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->P:Lib/player/base/helper/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, ""

    :try_start_0
    iget-object v1, v1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v5, "device_key"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->o0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getScan_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->p0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lib/player/app/MyApp;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    check-cast p1, Lib/player/app/MyApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lib/player/app/MyApp;->c()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    check-cast p1, Lib/player/app/MyApp;

    invoke-virtual {p1}, Lib/player/app/MyApp;->b()V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->l0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "v"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lib/player/app/MyApp;->x:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-static {p1}, Lv4/c;->f(Lib/player/models/AppInfoModel;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0b026d

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f0b01c6

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, LE4/a;

    invoke-direct {v1, p0, v0}, LE4/a;-><init>(Lib/player/pages/playlist/PlaylistActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b01c5

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, LE4/a;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, LE4/a;-><init>(Lib/player/pages/playlist/PlaylistActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_home"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lib/player/pages/playlist/PlaylistActivity;->G0:Z

    iput-boolean v2, p0, Lib/player/base/k;->W:Z

    invoke-static {v2}, Lib/player/base/k;->X(Z)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    :cond_3
    invoke-virtual {p0}, Lib/player/pages/playlist/PlaylistActivity;->b0()V

    new-instance p1, Ls4/w;

    iget-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    iget-object v3, p0, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getAdd_playlist()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    iget-object v5, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    invoke-static {v5}, Lv4/c;->f(Lib/player/models/AppInfoModel;)Z

    move-result v5

    new-instance v6, LB4/d;

    invoke-direct {v6, v0, p0}, LB4/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1}, Lv1/y;-><init>()V

    const/4 v7, -0x1

    iput v7, p1, Ls4/w;->e:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p1, Ls4/w;->d:Ljava/util/List;

    iput-object v6, p1, Ls4/w;->f:LB4/d;

    iput v4, p1, Ls4/w;->e:I

    iput-boolean v5, p1, Ls4/w;->h:Z

    iput-object v3, p1, Ls4/w;->g:Ljava/lang/String;

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->A0:Ls4/w;

    iget-object v1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v1, LB4/l;

    invoke-direct {v1, v0, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lib/player/base/helper/c;

    new-instance v0, LE4/c;

    invoke-direct {v0, p0}, LE4/c;-><init>(Lib/player/pages/playlist/PlaylistActivity;)V

    invoke-direct {p1, p0, v0}, Lib/player/base/helper/c;-><init>(Lf/i;Lib/player/base/helper/b;)V

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->H0:Lib/player/base/helper/c;

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->t0:Landroid/widget/Button;

    new-instance v0, LE4/a;

    invoke-direct {v0, p0, v2}, LE4/a;-><init>(Lib/player/pages/playlist/PlaylistActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lf/i;->onDestroy()V

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->H0:Lib/player/base/helper/c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v1, LE1/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LE1/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v0, LE1/b;

    invoke-virtual {v0}, LE1/b;->b()V

    :cond_0
    return-void
.end method

.method public final y(Lib/player/models/AppInfoModel;)V
    .locals 1

    invoke-virtual {p0}, Lib/player/pages/playlist/PlaylistActivity;->R()V

    iput-object p1, p0, Lib/player/base/k;->N:Lib/player/models/AppInfoModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lib/player/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lib/player/pages/playlist/PlaylistActivity;->b0()V

    iget-object p1, p0, Lib/player/pages/playlist/PlaylistActivity;->A0:Ls4/w;

    iget-object v0, p0, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    iput-object v0, p1, Ls4/w;->d:Ljava/util/List;

    invoke-virtual {p1}, Lv1/y;->d()V

    :cond_1
    return-void
.end method
