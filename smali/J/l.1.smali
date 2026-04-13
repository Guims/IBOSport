.class public final LJ/l;
.super Ljava/lang/Object;

# interfaces
.implements LO/g;
.implements LO5/a;
.implements LW1/b;
.implements LI/b;
.implements LI0/s;
.implements Ll2/b;
.implements Lf1/d;


# static fields
.field public static t:LJ/l;


# instance fields
.field public final synthetic b:I

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LJ/l;->b:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/leanback/widget/s;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/leanback/widget/s;-><init>(I)V

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    new-instance p1, Landroidx/leanback/widget/s;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/leanback/widget/s;-><init>(I)V

    iput-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    iput-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    return-void

    :pswitch_0
    new-instance p1, Lu2/j;

    const/16 v0, 0x18

    invoke-direct {p1, v0}, Lu2/j;-><init>(I)V

    new-instance v0, Lh3/e;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lh3/e;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    iput-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LI0/s;Lf1/k;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p2, p0, LJ/l;->s:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LI0/t;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LK1/c;LW3/e;Landroidx/emoji2/text/d;Ljava/util/Set;)V
    .locals 7

    const/16 v0, 0xc

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    iput-object p3, p0, LJ/l;->q:Ljava/lang/Object;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    new-instance v1, Ljava/lang/String;

    const/4 p3, 0x0

    array-length p4, p2

    invoke-direct {v1, p2, p3, p4}, Ljava/lang/String;-><init>([III)V

    new-instance v6, LE1/a;

    const/4 p2, 0x4

    invoke-direct {v6, v1, p2}, LE1/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, LJ/l;->V(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/n;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(LK1/o;LZ1/f;LK1/s;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    iput-object p2, p0, LJ/l;->s:Ljava/lang/Object;

    iput-object p3, p0, LJ/l;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p2, p0, LJ/l;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p2, p0, LJ/l;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;LL1/g;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, LJ/l;->r:Ljava/lang/Object;

    invoke-static {p2, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LJ/l;->s:Ljava/lang/Object;

    new-instance p2, Lcom/bumptech/glide/load/data/h;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/h;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, LJ/l;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld2/k;Ljava/util/ArrayList;LL1/g;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, LJ/l;->s:Ljava/lang/Object;

    invoke-static {p2, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LJ/l;->q:Ljava/lang/Object;

    new-instance p2, Lcom/bumptech/glide/load/data/h;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/h;-><init>(Ljava/io/InputStream;LL1/g;)V

    iput-object p2, p0, LJ/l;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LJ/l;->b:I

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p2, p0, LJ/l;->s:Ljava/lang/Object;

    iput-object p3, p0, LJ/l;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p4, p0, LJ/l;->b:I

    iput-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    iput-object p2, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p3, p0, LJ/l;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    iput-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    iput-object p2, p0, LJ/l;->q:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    const/16 v0, 0x1a

    iput v0, p0, LJ/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln1/c;

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v3, [J

    iget-wide v4, v1, Ln1/c;->b:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Ln1/c;->c:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast p1, [J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method public static C(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    const-string v5, "UTF-8"

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "&"

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0, v0, p1}, Lcom/google/android/material/datepicker/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    if-eq v1, v2, :cond_6

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Landroidx/emoji2/text/v;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/v;

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method

.method public static varargs T(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public static U(Landroid/content/Context;Landroid/util/AttributeSet;[II)LJ/l;
    .locals 2

    new-instance v0, LJ/l;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LJ/l;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method private final c0()V
    .locals 0

    return-void
.end method

.method private final d0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method

.method public B()Lj2/j;
    .locals 4

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Lg2/c;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lj2/j;

    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v3, Lg2/c;

    invoke-direct {v0, v1, v2, v3}, Lj2/j;-><init>(Ljava/lang/String;[BLg2/c;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public D(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, LJ/l;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/h;

    iget-object v0, v0, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v0, LR1/y;

    invoke-virtual {v0}, LR1/y;->reset()V

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ld2/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ld2/a;

    invoke-direct {v1, v0}, Ld2/a;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public F(Lm2/a;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    new-instance v0, LU3/e;

    iget-object v1, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v3, LR3/d;

    invoke-direct {v0, p2, v1, v2, v3}, LU3/e;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;LR3/d;)V

    const-class p2, Lm2/a;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR3/d;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, LR3/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, LR3/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No encoder for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G()LE1/e;
    .locals 8

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "GET Request URL: "

    invoke-static {}, LF3/d;->b()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {v3, v4}, LJ/l;->C(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v4, 0x2

    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v1, 0x2710

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v4, 0x2000

    new-array v4, v4, [C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_6

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, LE1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, LE1/e;->a:I

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    return-object v0

    :catchall_3
    move-exception v1

    :goto_4
    move-object v0, v2

    goto :goto_6

    :goto_5
    move-object v1, v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :goto_6
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v1
.end method

.method public H(I)Landroid/content/res/ColorStateList;
    .locals 3

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, LH3/u0;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public I()J
    .locals 2

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, LI0/m;

    if-eqz v0, :cond_0

    iget-wide v0, v0, LI0/m;->s:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public J(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, LE2/g;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public K(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lk/s;->a()Lk/s;

    move-result-object v0

    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lk/s;->a:Lk/H0;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Lk/H0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public L(IILk/P;)Landroid/graphics/Typeface;
    .locals 9

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast p1, Landroid/util/TypedValue;

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    iget-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/util/TypedValue;

    sget-object p1, LA/r;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, LA/r;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILA/b;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public M(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2, p1}, Lio/realm/internal/OsResults;->d(I)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    iget-object p2, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast p2, Lio/realm/y;

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lio/realm/d;->r(Ljava/lang/Class;Lio/realm/internal/UncheckedRow;)Lio/realm/M;

    move-result-object p1

    return-object p1
.end method

.method public N()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 10

    iget v0, p0, LJ/l;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/data/h;

    iget-object v2, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v2, LL1/g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LI1/e;

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, LR1/y;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v7, v8, v2}, LR1/y;-><init>(Ljava/io/InputStream;LL1/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v5, v7}, LI1/e;->b(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, LR1/y;->b()V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, LR1/y;->b()V

    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    throw v0

    :cond_2
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_2
    return-object v5

    :pswitch_0
    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/data/h;

    iget-object v1, v1, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v1, LR1/y;

    invoke-virtual {v1}, LR1/y;->reset()V

    iget-object v2, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v2, LL1/g;

    invoke-static {v0, v1, v2}, LC2/b;->x(Ljava/util/List;Ljava/io/InputStream;LL1/g;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Ld2/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, LC2/b;->y(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Lu2/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lu2/j;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "lib"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string v0, "."

    invoke-static {p2, v0, p3}, Lcom/google/android/material/datepicker/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3
.end method

.method public P(Ljava/lang/CharSequence;IILandroidx/emoji2/text/u;)Z
    .locals 7

    iget v0, p4, Landroidx/emoji2/text/u;->c:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/g;

    invoke-virtual {p4}, Landroidx/emoji2/text/u;->b()LY/a;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, LJ/E;->a(I)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, v4, LJ/E;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    iget v4, v4, LJ/E;->a:I

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    check-cast v0, Landroidx/emoji2/text/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/emoji2/text/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, v0, Landroidx/emoji2/text/d;->a:Landroid/text/TextPaint;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, LB/e;->a:I

    invoke-static {p1, p2}, LB/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p1

    iget p2, p4, Landroidx/emoji2/text/u;->c:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p1, :cond_3

    or-int/lit8 p1, p2, 0x2

    goto :goto_1

    :cond_3
    or-int/lit8 p1, p2, 0x1

    :goto_1
    iput p1, p4, Landroidx/emoji2/text/u;->c:I

    :cond_4
    iget p1, p4, Landroidx/emoji2/text/u;->c:I

    and-int/lit8 p1, p1, 0x3

    if-ne p1, v1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public R(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/exoplayer/source/V;)V
    .locals 7

    new-instance v1, LI0/m;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, LI0/m;-><init>(Landroidx/media3/common/DataReader;JJ)V

    iput-object v1, p0, LJ/l;->q:Ljava/lang/Object;

    iget-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast p1, LI0/q;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast p1, LI0/t;

    invoke-interface {p1, p2, p3}, LI0/t;->h(Landroid/net/Uri;Ljava/util/Map;)[LI0/q;

    move-result-object p1

    array-length p3, p1

    sget-object p4, Lp3/H;->q:Lp3/F;

    const-string p4, "expectedSize"

    invoke-static {p3, p4}, Lp3/q;->c(ILjava/lang/String;)V

    new-instance p4, Lp3/E;

    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/play_billing/w;-><init>(I)V

    array-length p3, p1

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-ne p3, p5, :cond_1

    aget-object p1, p1, p6

    iput-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_1
    array-length p3, p1

    move p7, p6

    :goto_0
    if-ge p7, p3, :cond_7

    aget-object v0, p1, p7

    :try_start_0
    invoke-interface {v0, v1}, LI0/q;->b(LI0/r;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, LJ/l;->s:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p6, v1, LI0/m;->u:I

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-interface {v0}, LI0/q;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, LI0/q;

    if-nez v0, :cond_4

    iget-wide v5, v1, LI0/m;->s:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, p6

    goto :goto_2

    :cond_4
    :goto_1
    move v0, p5

    :goto_2
    invoke-static {v0}, Lk0/c;->j(Z)V

    iput p6, v1, LI0/m;->u:I

    goto :goto_5

    :goto_3
    iget-object p2, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast p2, LI0/q;

    if-nez p2, :cond_6

    iget-wide p2, v1, LI0/m;->s:J

    cmp-long p2, p2, v3

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    move p5, p6

    :cond_6
    :goto_4
    invoke-static {p5}, Lk0/c;->j(Z)V

    iput p6, v1, LI0/m;->u:I

    throw p1

    :catch_0
    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, LI0/q;

    if-nez v0, :cond_4

    iget-wide v5, v1, LI0/m;->s:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    goto :goto_1

    :goto_5
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_7
    :goto_6
    iget-object p3, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast p3, LI0/q;

    if-eqz p3, :cond_8

    :goto_7
    iget-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast p1, LI0/q;

    invoke-interface {p1, p8}, LI0/q;->k(LI0/s;)V

    return-void

    :cond_8
    new-instance p3, LO0/d;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "None of the available extractors ("

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p6, LE1/a;

    const-string p7, ", "

    invoke-direct {p6, p7}, LE1/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lp3/H;->k([Ljava/lang/Object;)Lp3/Y;

    move-result-object p1

    new-instance p7, Landroidx/media3/common/d;

    const/4 p8, 0x3

    invoke-direct {p7, p8}, Landroidx/media3/common/d;-><init>(I)V

    invoke-static {p1, p7}, Lp3/q;->v(Ljava/util/List;Lo3/d;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-virtual {p6, p1}, LE1/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Lp3/E;->i()Lp3/Y;

    move-result-object p2

    invoke-direct {p3, p1, p2}, LO0/d;-><init>(Ljava/lang/String;Lp3/Y;)V

    throw p3
.end method

.method public S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, LJ/l;->s:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lu2/j;

    iget-object v0, v1, LJ/l;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%s already loaded previously!"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, LJ/l;->T(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "%s (%s) was loaded normally!"

    filled-new-array/range {p2 .. p3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, LJ/l;->T(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Loading the library normally failed: %s"

    invoke-static {v6, v0}, LJ/l;->T(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "%s (%s) was not loaded normally, re-linking..."

    filled-new-array/range {p2 .. p3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, LJ/l;->T(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p3}, LJ/l;->O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_c

    :cond_1
    const-string v6, "lib"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual/range {p0 .. p3}, LJ/l;->O(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lu2/j;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lf2/a;

    invoke-direct {v10, v9}, Lf2/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    array-length v9, v6

    move v10, v7

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v6, v10

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v6, v1, LJ/l;->q:Ljava/lang/Object;

    check-cast v6, Lh3/e;

    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v9, v8

    if-lez v9, :cond_5

    goto :goto_3

    :cond_5
    sget-object v8, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_7
    :goto_2
    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-static {v3}, Lu2/j;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v2, v8, v9}, Lh3/e;->s(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)LY1/c;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v10, :cond_c

    iget-object v2, v10, LY1/c;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/ZipFile;

    move v8, v7

    :goto_4
    add-int/lit8 v11, v8, 0x1

    const/4 v12, 0x5

    if-ge v8, v12, :cond_a

    :try_start_2
    const-string v8, "Found %s! Extracting..."

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v12}, LJ/l;->T(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_8

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object v6, v10

    goto/16 :goto_e

    :cond_8
    :try_start_4
    iget-object v8, v10, LY1/c;->r:Ljava/lang/Object;

    check-cast v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v13, 0x1000

    :try_start_6
    new-array v13, v13, [B

    const-wide/16 v14, 0x0

    :goto_5
    invoke-virtual {v8, v13}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    cmp-long v6, v14, v6

    if-eqz v6, :cond_9

    :catch_1
    :goto_6
    :try_start_8
    invoke-static {v8}, Lh3/e;->r(Ljava/io/Closeable;)V

    invoke-static {v12}, Lh3/e;->r(Ljava/io/Closeable;)V

    goto :goto_b

    :cond_9
    invoke-static {v8}, Lh3/e;->r(Ljava/io/Closeable;)V

    invoke-static {v12}, Lh3/e;->r(Ljava/io/Closeable;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v6}, Ljava/io/File;->setWritable(Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v6, v8

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v12, v13, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 p1, v8

    int-to-long v7, v6

    add-long/2addr v14, v7

    move-object/from16 v8, p1

    const/4 v7, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 p1, v8

    move-object/from16 v6, p1

    goto :goto_a

    :catch_2
    move-object/from16 p1, v8

    move-object/from16 v8, p1

    goto :goto_6

    :catch_3
    move-object/from16 p1, v8

    move-object/from16 v8, p1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 p1, v8

    move-object/from16 v6, p1

    :goto_7
    const/4 v12, 0x0

    goto :goto_a

    :catch_4
    move-object/from16 p1, v8

    :goto_8
    const/4 v12, 0x0

    goto :goto_6

    :catch_5
    move-object/from16 p1, v8

    :goto_9
    const/4 v12, 0x0

    goto :goto_6

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    goto :goto_7

    :catch_6
    const/4 v8, 0x0

    goto :goto_8

    :catch_7
    const/4 v8, 0x0

    goto :goto_9

    :goto_a
    :try_start_b
    invoke-static {v6}, Lh3/e;->r(Ljava/io/Closeable;)V

    invoke-static {v12}, Lh3/e;->r(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_8
    :goto_b
    move v8, v11

    const/4 v7, 0x0

    goto/16 :goto_4

    :catch_9
    :goto_c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "%s (%s) was re-linked!"

    filled-new-array/range {p2 .. p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, LJ/l;->T(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_c
    :try_start_c
    invoke-static {v2, v9}, Lh3/e;->v(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_d

    :catch_a
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_d
    new-instance v2, LR1/G;

    const-string v3, "Could not find \'"

    const-string v4, "\'. Looked for: "

    invoke-static {v3, v9, v4}, LB/f;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but only found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    invoke-static {v3, v0, v4}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_5
    move-exception v0

    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_d

    :try_start_e
    iget-object v2, v6, LY1/c;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    :catch_b
    :cond_d
    throw v0
.end method

.method public V(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/n;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    new-instance v5, Landroidx/emoji2/text/o;

    iget-object v6, v0, LJ/l;->s:Ljava/lang/Object;

    check-cast v6, LK1/c;

    iget-object v6, v6, LK1/c;->s:Ljava/lang/Object;

    check-cast v6, Landroidx/emoji2/text/r;

    invoke-direct {v5, v6}, Landroidx/emoji2/text/o;-><init>(Landroidx/emoji2/text/r;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v6

    move v10, v7

    move v11, v8

    move/from16 v6, p2

    :cond_0
    :goto_0
    move v7, v6

    :goto_1
    const/4 v12, 0x2

    if-ge v6, v2, :cond_f

    if-ge v10, v3, :cond_f

    if-eqz v11, :cond_f

    iget-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iget-object v13, v13, Landroidx/emoji2/text/r;->a:Landroid/util/SparseArray;

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/emoji2/text/r;

    :goto_2
    iget v14, v5, Landroidx/emoji2/text/o;->a:I

    const/4 v15, 0x3

    if-eq v14, v12, :cond_3

    if-nez v13, :cond_2

    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    :goto_3
    move v13, v8

    goto :goto_6

    :cond_2
    iput v12, v5, Landroidx/emoji2/text/o;->a:I

    iput-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iput v8, v5, Landroidx/emoji2/text/o;->f:I

    :goto_4
    move v13, v12

    goto :goto_6

    :cond_3
    if-eqz v13, :cond_4

    iput-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iget v13, v5, Landroidx/emoji2/text/o;->f:I

    add-int/2addr v13, v8

    iput v13, v5, Landroidx/emoji2/text/o;->f:I

    goto :goto_4

    :cond_4
    const v13, 0xfe0e

    if-ne v9, v13, :cond_5

    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    goto :goto_3

    :cond_5
    const v13, 0xfe0f

    if-ne v9, v13, :cond_6

    goto :goto_4

    :cond_6
    iget-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iget-object v14, v13, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/u;

    if-eqz v14, :cond_9

    iget v14, v5, Landroidx/emoji2/text/o;->f:I

    if-ne v14, v8, :cond_8

    invoke-virtual {v5}, Landroidx/emoji2/text/o;->b()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iput-object v13, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/r;

    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    :goto_5
    move v13, v15

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    goto :goto_3

    :cond_8
    iput-object v13, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/r;

    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Landroidx/emoji2/text/o;->a()V

    goto :goto_3

    :goto_6
    iput v9, v5, Landroidx/emoji2/text/o;->e:I

    if-eq v13, v8, :cond_e

    if-eq v13, v12, :cond_c

    if-eq v13, v15, :cond_a

    goto :goto_1

    :cond_a
    if-nez p5, :cond_b

    iget-object v12, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/r;

    iget-object v12, v12, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/u;

    invoke-virtual {v0, v1, v7, v6, v12}, LJ/l;->P(Ljava/lang/CharSequence;IILandroidx/emoji2/text/u;)Z

    move-result v12

    if-nez v12, :cond_0

    :cond_b
    iget-object v11, v5, Landroidx/emoji2/text/o;->d:Landroidx/emoji2/text/r;

    iget-object v11, v11, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/u;

    invoke-interface {v4, v1, v7, v6, v11}, Landroidx/emoji2/text/n;->i(Ljava/lang/CharSequence;IILandroidx/emoji2/text/u;)Z

    move-result v11

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v12, v6

    if-ge v12, v2, :cond_d

    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    move v9, v6

    :cond_d
    move v6, v12

    goto/16 :goto_1

    :cond_e
    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    move v9, v7

    goto/16 :goto_0

    :cond_f
    iget v2, v5, Landroidx/emoji2/text/o;->a:I

    if-ne v2, v12, :cond_12

    iget-object v2, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iget-object v2, v2, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/u;

    if-eqz v2, :cond_12

    iget v2, v5, Landroidx/emoji2/text/o;->f:I

    if-gt v2, v8, :cond_10

    invoke-virtual {v5}, Landroidx/emoji2/text/o;->b()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    if-ge v10, v3, :cond_12

    if-eqz v11, :cond_12

    if-nez p5, :cond_11

    iget-object v2, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iget-object v2, v2, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/u;

    invoke-virtual {v0, v1, v7, v6, v2}, LJ/l;->P(Ljava/lang/CharSequence;IILandroidx/emoji2/text/u;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    iget-object v2, v5, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/r;

    iget-object v2, v2, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/u;

    invoke-interface {v4, v1, v7, v6, v2}, Landroidx/emoji2/text/n;->i(Ljava/lang/CharSequence;IILandroidx/emoji2/text/u;)Z

    :cond_12
    invoke-interface {v4}, Landroidx/emoji2/text/n;->g()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public W([Ljava/lang/Object;)V
    .locals 2

    new-instance v0, LP5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v1, LQ5/b;

    iput-object v1, v0, LP5/a;->a:LQ5/b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    iput-object p1, v0, LP5/a;->b:[Ljava/lang/Object;

    iget-object p1, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public X(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void

    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method

.method public Y([Ljava/lang/Object;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-virtual {p0, v1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "non-sensical empty or null argument array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method

.method public Z()V
    .locals 1

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(LK1/D;LI1/j;)LK1/D;
    .locals 2

    invoke-interface {p1}, LK1/D;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object p1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast p1, LE1/t;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, LL1/b;

    invoke-static {v1, v0}, LR1/e;->d(LL1/b;Landroid/graphics/Bitmap;)LR1/e;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LE1/t;->a(LK1/D;LI1/j;)LK1/D;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v0, LV1/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, LW1/d;

    invoke-virtual {v0, p1, p2}, LW1/d;->a(LK1/D;LI1/j;)LK1/D;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a0(Lj2/j;IZ)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    iget-object v3, v1, LJ/l;->q:Ljava/lang/Object;

    check-cast v3, Lp2/b;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, LJ/l;->r:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    const-class v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "jobscheduler"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobScheduler;

    new-instance v7, Ljava/util/zip/Adler32;

    invoke-direct {v7}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v5, v0, Lj2/j;->a:Ljava/lang/String;

    iget-object v9, v0, Lj2/j;->a:Ljava/lang/String;

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/zip/Adler32;->update([B)V

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v8, v0, Lj2/j;->c:Lg2/c;

    invoke-static {v8}, Lt2/a;->a(Lg2/c;)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v5, v0, Lj2/j;->b:[B

    if-eqz v5, :cond_0

    invoke-virtual {v7, v5}, Ljava/util/zip/Adler32;->update([B)V

    :cond_0
    invoke-virtual {v7}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v10

    long-to-int v7, v10

    const-string v10, "JobInfoScheduler"

    const-string v11, "attemptNumber"

    if-nez p3, :cond_2

    invoke-virtual {v6}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/job/JobInfo;

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getId()I

    move-result v13

    if-ne v13, v7, :cond_1

    if-lt v14, v2, :cond_2

    const-string v2, "Upload for context %s is already scheduled. Returning..."

    invoke-static {v10, v2, v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v12, v1, LJ/l;->s:Ljava/lang/Object;

    check-cast v12, Lq2/d;

    check-cast v12, Lq2/h;

    invoke-virtual {v12}, Lq2/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    invoke-static {v8}, Lt2/a;->a(Lg2/c;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v9, v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    invoke-virtual {v12, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_3

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_0

    :cond_3
    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v12, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v12, v7, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    move-object v4, v6

    move/from16 v16, v7

    invoke-virtual {v3, v8, v14, v15, v2}, Lp2/b;->a(Lg2/c;JI)J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    iget-object v6, v3, Lp2/b;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/c;

    iget-object v6, v6, Lp2/c;->c:Ljava/util/Set;

    sget-object v7, Lp2/d;->b:Lp2/d;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v1, 0x1

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    invoke-virtual {v12, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    :cond_4
    invoke-virtual {v12, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_1
    sget-object v7, Lp2/d;->r:Lp2/d;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v12, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_5
    sget-object v7, Lp2/d;->q:Lp2/d;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v12, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    :cond_6
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v1, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "backendName"

    invoke-virtual {v1, v6, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "priority"

    invoke-static {v8}, Lt2/a;->a(Lg2/c;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v5, :cond_7

    const-string v6, "extras"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v12, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v8, v14, v15, v2}, Lp2/b;->a(Lg2/c;JI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v3, v13, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10}, Lcom/bumptech/glide/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v12}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b0(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, LJ/l;->r:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null backendName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method

.method public e(J)I
    .locals 2

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lk0/C;->a([JJZ)I

    move-result p1

    array-length p2, v0

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public endTracks()V
    .locals 1

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, LI0/s;

    invoke-interface {v0}, LI0/s;->endTracks()V

    return-void
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le2/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le2/b;

    invoke-interface {v0}, Le2/b;->d()Le2/e;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Le2/e;->a:Z

    :cond_0
    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Le2/c;

    invoke-interface {v0, p1}, Le2/c;->j(Ljava/lang/Object;)V

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, LI/d;

    invoke-virtual {v0, p1}, LI/d;->f(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, LJ/l;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v1, LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2/d;

    iget-object v2, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v2, Lh3/e;

    invoke-virtual {v2}, Lh3/e;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/b;

    new-instance v3, LJ/l;

    const/16 v4, 0x1d

    invoke-direct {v3, v0, v1, v2, v4}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v3

    :pswitch_0
    new-instance v6, Lh3/e;

    const/16 v0, 0x1d

    invoke-direct {v6, v0}, Lh3/e;-><init>(I)V

    new-instance v7, LW3/e;

    invoke-direct {v7, v0}, LW3/e;-><init>(I)V

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, LG/c;

    invoke-virtual {v0}, LG/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lo2/b;

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, LK3/c;

    invoke-virtual {v0}, LK3/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, LM3/c;

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, LK1/c;

    invoke-virtual {v0}, LK1/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, LK1/c;

    new-instance v5, Lj2/q;

    invoke-direct/range {v5 .. v10}, Lj2/q;-><init>(Ls2/a;Ls2/a;Lo2/b;LM3/c;LK1/c;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    iget-object v0, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, LJ/l;->Y([Ljava/lang/Object;)V

    return-void
.end method

.method public j(I)J
    .locals 4

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lk0/c;->d(Z)V

    array-length v3, v0

    if-ge p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lk0/c;->d(Z)V

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LJ/l;->X(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public p()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, LI/d;

    invoke-virtual {v0}, LI/d;->p()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, Le2/a;

    invoke-interface {v0}, Le2/a;->create()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Created new "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v1, v0, Le2/b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Le2/b;

    invoke-interface {v1}, Le2/b;->d()Le2/e;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Le2/e;->a:Z

    :cond_1
    return-object v0
.end method

.method public varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, LJ/l;->Y([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs r([Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, LJ/l;->Y([Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/String;Ljavax/net/ssl/SSLException;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method

.method public seekMap(LI0/F;)V
    .locals 1

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, LI0/s;

    invoke-interface {v0, p1}, LI0/s;->seekMap(LI0/F;)V

    return-void
.end method

.method public t(J)Ljava/util/List;
    .locals 9

    iget-object v0, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v5, [J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v7, v5, v6

    cmp-long v7, v7, p1

    if-gtz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln1/c;

    iget-object v6, v5, Ln1/c;->a:Lj0/b;

    iget v7, v6, Lj0/b;->e:F

    const v8, -0x800001

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, LD0/c;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, LD0/c;-><init>(I)V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/c;

    iget-object p1, p1, Ln1/c;->a:Lj0/b;

    invoke-virtual {p1}, Lj0/b;->a()Lj0/a;

    move-result-object p1

    rsub-int/lit8 p2, v3, -0x1

    int-to-float p2, p2

    iput p2, p1, Lj0/a;->e:F

    const/4 p2, 0x1

    iput p2, p1, Lj0/a;->f:I

    invoke-virtual {p1}, Lj0/a;->a()Lj0/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, LJ/l;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/i;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/i;->b:Lcom/google/android/gms/internal/play_billing/i;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/i;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/i;->b:Lcom/google/android/gms/internal/play_billing/i;

    const-string v2, ", "

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public track(II)LI0/L;
    .locals 3

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, LI0/s;

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    invoke-interface {v1, p1, p2}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/o;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance v2, Lf1/o;

    invoke-interface {v1, p1, p2}, LI0/s;->track(II)LI0/L;

    move-result-object p2

    iget-object v1, p0, LJ/l;->s:Ljava/lang/Object;

    check-cast v1, Lf1/k;

    invoke-direct {v2, p2, v1}, Lf1/o;-><init>(LI0/L;Lf1/k;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LJ/l;->X(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    return v0
.end method

.method public x()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LJ/l;->X(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LJ/l;->W([Ljava/lang/Object;)V

    return-void
.end method
