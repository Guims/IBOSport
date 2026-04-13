.class public final synthetic LB4/k;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/M;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Z

.field public final synthetic r:Ljava/util/ArrayList;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/util/ArrayList;I)V
    .locals 0

    iput p4, p0, LB4/k;->b:I

    iput-object p1, p0, LB4/k;->s:Ljava/lang/Object;

    iput-boolean p2, p0, LB4/k;->q:Z

    iput-object p3, p0, LB4/k;->r:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget v0, p0, LB4/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/k;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesPlayerActivity;

    iget-boolean v1, p0, LB4/k;->q:Z

    iget-object v2, p0, LB4/k;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->C0:I

    const/4 v1, 0x3

    if-nez p1, :cond_0

    invoke-virtual {v0, v3, v1}, Lib/player/pages/series/SeriesPlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/series/SeriesPlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_0

    :cond_1
    iput p1, v0, Lib/player/pages/series/SeriesPlayerActivity;->D0:I

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-virtual {v0, v3, v1}, Lib/player/pages/series/SeriesPlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/series/SeriesPlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LB4/k;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesMobilePlayerActivity;

    iget-boolean v1, p0, LB4/k;->q:Z

    iget-object v2, p0, LB4/k;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iput p1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->H0:I

    const/4 v1, 0x3

    if-nez p1, :cond_3

    invoke-virtual {v0, v3, v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_1

    :cond_4
    iput p1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->I0:I

    const/4 v1, 0x1

    if-nez p1, :cond_5

    invoke-virtual {v0, v3, v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, LB4/k;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MoviePlayerActivity;

    iget-boolean v1, p0, LB4/k;->q:Z

    iget-object v2, p0, LB4/k;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iput p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->C0:I

    const/4 v1, 0x3

    if-nez p1, :cond_6

    invoke-virtual {v0, v3, v1}, Lib/player/pages/movie/MoviePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/movie/MoviePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_2

    :cond_7
    iput p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->D0:I

    const/4 v1, 0x1

    if-nez p1, :cond_8

    invoke-virtual {v0, v3, v1}, Lib/player/pages/movie/MoviePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/movie/MoviePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, LB4/k;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-boolean v1, p0, LB4/k;->q:Z

    iget-object v2, p0, LB4/k;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iput p1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->G0:I

    const/4 v1, 0x3

    if-nez p1, :cond_9

    invoke-virtual {v0, v3, v1}, Lib/player/pages/movie/MovieMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/movie/MovieMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_3

    :cond_a
    iput p1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->H0:I

    const/4 v1, 0x1

    if-nez p1, :cond_b

    invoke-virtual {v0, v3, v1}, Lib/player/pages/movie/MovieMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    goto :goto_3

    :cond_b
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, Lib/player/pages/movie/MovieMobilePlayerActivity;->y(Lib/player/models/TrackInfoObj;I)V

    :goto_3
    return-void

    :pswitch_3
    iget-object v0, p0, LB4/k;->s:Ljava/lang/Object;

    check-cast v0, LB4/s;

    iget-boolean v1, p0, LB4/k;->q:Z

    iget-object v2, p0, LB4/k;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    iput p1, v0, LB4/s;->r1:I

    const/4 v1, 0x3

    if-nez p1, :cond_c

    invoke-virtual {v0, v3, v1}, LB4/s;->T(Lib/player/models/TrackInfoObj;I)V

    goto :goto_4

    :cond_c
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, LB4/s;->T(Lib/player/models/TrackInfoObj;I)V

    goto :goto_4

    :cond_d
    iput p1, v0, LB4/s;->s1:I

    const/4 v1, 0x1

    if-nez p1, :cond_e

    invoke-virtual {v0, v3, v1}, LB4/s;->T(Lib/player/models/TrackInfoObj;I)V

    goto :goto_4

    :cond_e
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/TrackInfoObj;

    invoke-virtual {v0, p1, v1}, LB4/s;->T(Lib/player/models/TrackInfoObj;I)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
