.class public final synthetic LG4/a;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LG4/d;


# direct methods
.method public synthetic constructor <init>(LG4/d;I)V
    .locals 0

    iput p2, p0, LG4/a;->a:I

    iput-object p1, p0, LG4/a;->b:LG4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget v0, p0, LG4/a;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LG4/a;->b:LG4/d;

    iget-object v0, v0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "time_format"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_1
    iget-object v0, p0, LG4/a;->b:LG4/d;

    iget-object v0, v0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_period"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_2
    iget-object v0, p0, LG4/a;->b:LG4/d;

    iget-object v0, v0, LG4/d;->n0:Lib/player/base/helper/w;

    if-nez p1, :cond_0

    const-string p1, "ts"

    goto :goto_0

    :cond_0
    const-string p1, "m3u8"

    :goto_0
    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live_stream_format"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_3
    iget-object v0, p0, LG4/a;->b:LG4/d;

    iget-object v0, v0, LG4/d;->n0:Lib/player/base/helper/w;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object p1, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "is_allow_protocol"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_4
    iget-object v0, p0, LG4/a;->b:LG4/d;

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lv4/c;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, LG4/d;->n0:Lib/player/base/helper/w;

    const-string v0, "ib9x_amazon"

    invoke-virtual {p1, v0}, Lib/player/base/helper/w;->j0(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, v0, LG4/d;->n0:Lib/player/base/helper/w;

    const-string v0, "ib9x_tv"

    invoke-virtual {p1, v0}, Lib/player/base/helper/w;->j0(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, LG4/d;->n0:Lib/player/base/helper/w;

    const-string v0, "ib9x_mobile"

    invoke-virtual {p1, v0}, Lib/player/base/helper/w;->j0(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_5
    iget-object v0, p0, LG4/a;->b:LG4/d;

    iget-object v0, v0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_player"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_6
    iget-object v0, p0, LG4/a;->b:LG4/d;

    iget-object v0, v0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_7
    iget-object v0, p0, LG4/a;->b:LG4/d;

    iget-object v0, v0, LG4/d;->n0:Lib/player/base/helper/w;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_grid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
