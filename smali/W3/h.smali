.class public abstract synthetic LW3/h;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic A(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public static bridge synthetic B(Lib/player/base/l;Landroid/app/PictureInPictureParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    return-void
.end method

.method public static bridge synthetic C()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 0

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Landroid/content/res/Configuration;)I
    .locals 0

    iget p0, p0, Landroid/content/res/Configuration;->colorMode:I

    return p0
.end method

.method public static bridge synthetic b(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/time/Instant;Ljava/time/Instant;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Ljava/time/Instant;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic e()Landroid/app/PictureInPictureParams$Builder;
    .locals 1

    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic f(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;
    .locals 0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(I)Landroid/media/AudioFocusRequest$Builder;
    .locals 1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    return-object v0
.end method

.method public static bridge synthetic h(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/media/AudioFocusRequest;)Landroid/media/AudioFocusRequest$Builder;
    .locals 1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p0}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    return-object v0
.end method

.method public static bridge synthetic l(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n()Ljava/time/Instant;
    .locals 1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic o(J)Ljava/time/Instant;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/time/Instant;J)Ljava/time/Instant;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic r()Ljava/time/format/DateTimeFormatter;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static bridge synthetic s(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;
    .locals 0

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 0

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic v(Ljava/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w()V
    .locals 1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    return-void
.end method

.method public static bridge synthetic x(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    return-void
.end method

.method public static bridge synthetic y(Landroid/content/res/Configuration;I)V
    .locals 0

    iput p1, p0, Landroid/content/res/Configuration;->colorMode:I

    return-void
.end method

.method public static bridge synthetic z(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/RectF;)Z

    return-void
.end method
