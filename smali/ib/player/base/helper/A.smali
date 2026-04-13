.class public final synthetic Lib/player/base/helper/A;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/x;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic q:Z

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lib/player/base/helper/A;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lib/player/base/helper/A;->q:Z

    iput p1, p0, Lib/player/base/helper/A;->r:I

    iput p2, p0, Lib/player/base/helper/A;->s:I

    return-void
.end method


# virtual methods
.method public final j(Lio/realm/y;)V
    .locals 3

    const-class v0, Lib/player/models/SeriesModel;

    const-string v1, "name"

    iget-object v2, p0, Lib/player/base/helper/A;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lib/player/base/helper/A;->q:Z

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setIs_recent(Z)V

    iget v0, p0, Lib/player/base/helper/A;->r:I

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setSeason_pos(I)V

    iget v0, p0, Lib/player/base/helper/A;->s:I

    invoke-virtual {p1, v0}, Lib/player/models/SeriesModel;->setEpisode_pos(I)V

    :cond_0
    return-void
.end method
