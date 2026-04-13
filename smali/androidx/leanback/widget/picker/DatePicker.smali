.class public Landroidx/leanback/widget/picker/DatePicker;
.super Lf0/d;


# static fields
.field public static final R:[I


# instance fields
.field public E:Ljava/lang/String;

.field public F:Lf0/e;

.field public G:Lf0/e;

.field public H:Lf0/e;

.field public I:I

.field public J:I

.field public K:I

.field public final L:Ljava/text/SimpleDateFormat;

.field public final M:LY1/c;

.field public final N:Ljava/util/Calendar;

.field public final O:Ljava/util/Calendar;

.field public final P:Ljava/util/Calendar;

.field public final Q:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x5

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/leanback/widget/picker/DatePicker;->R:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lf0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->L:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance v1, LY1/c;

    invoke-direct {v1, v0}, LY1/c;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->M:LY1/c;

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lcom/bumptech/glide/d;->l(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->M:LY1/c;

    iget-object v1, v1, LY1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/bumptech/glide/d;->l(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->M:LY1/c;

    iget-object v1, v1, LY1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/bumptech/glide/d;->l(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->M:LY1/c;

    iget-object v1, v1, LY1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/bumptech/glide/d;->l(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->F:Lf0/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->M:LY1/c;

    iget-object v1, v1, LY1/c;->r:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lf0/e;->d:[Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/leanback/widget/picker/DatePicker;->I:I

    invoke-virtual {p0, v1, v0}, Lf0/d;->a(ILf0/e;)V

    :cond_0
    sget-object v0, Le0/a;->d:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x76c

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {p0, v1, v4}, Landroidx/leanback/widget/picker/DatePicker;->g(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v1, v5, v0, v2}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v1, v5, v0, v2}, Ljava/util/Calendar;->set(III)V

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    iget-object v4, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0x834

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {p0, v3, v1}, Landroidx/leanback/widget/picker/DatePicker;->g(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v1, v4, v0, v2}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v1, v4, v0, v2}, Ljava/util/Calendar;->set(III)V

    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p2, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    :cond_5
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->L:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Date: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: MM/dd/yyyy"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatePicker"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDatePickerFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDatePickerFormat(Ljava/lang/String;)V
    .locals 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->E:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->E:Ljava/lang/String;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->M:LY1/c;

    iget-object v1, v0, LY1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/Locale;

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "MM/dd/yyyy"

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x6

    new-array v5, v4, [C

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v7, v10, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x20

    if-ne v10, v12, :cond_3

    goto :goto_3

    :cond_3
    const/16 v12, 0x27

    if-ne v10, v12, :cond_5

    if-nez v8, :cond_4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v11

    goto :goto_3

    :cond_4
    move v8, v6

    goto :goto_3

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    move v11, v6

    :goto_1
    if-ge v11, v4, :cond_8

    aget-char v12, v5, v11

    if-ne v10, v12, :cond_7

    if-eq v10, v9, :cond_9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    move v9, v10

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v11

    if-ne v1, v3, :cond_12

    invoke-virtual {p0, v2}, Lf0/d;->setSeparators(Ljava/util/List;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lf0/e;

    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->F:Lf0/e;

    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Lf0/e;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/leanback/widget/picker/DatePicker;->I:I

    iput v1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:I

    iput v1, p0, Landroidx/leanback/widget/picker/DatePicker;->K:I

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v6, v2, :cond_11

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    const-string v4, "datePicker format error"

    if-eq v2, v3, :cond_f

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_d

    const/16 v3, 0x59

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Lf0/e;

    if-nez v2, :cond_b

    new-instance v2, Lf0/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Lf0/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v6, p0, Landroidx/leanback/widget/picker/DatePicker;->K:I

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Lf0/e;

    const-string v3, "%d"

    iput-object v3, v2, Lf0/e;->e:Ljava/lang/String;

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->F:Lf0/e;

    if-nez v2, :cond_e

    new-instance v2, Lf0/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->F:Lf0/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->F:Lf0/e;

    iget-object v3, v0, LY1/c;->r:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lf0/e;->d:[Ljava/lang/CharSequence;

    iput v6, p0, Landroidx/leanback/widget/picker/DatePicker;->I:I

    goto :goto_5

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lf0/e;

    if-nez v2, :cond_10

    new-instance v2, Lf0/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lf0/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lf0/e;

    const-string v3, "%02d"

    iput-object v3, v2, Lf0/e;->e:Ljava/lang/String;

    iput v6, p0, Landroidx/leanback/widget/picker/DatePicker;->J:I

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    invoke-virtual {p0, v1}, Lf0/d;->setColumns(Ljava/util/List;)V

    new-instance p1, LA4/f;

    const/16 v0, 0x15

    invoke-direct {p1, v0, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Separators size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must equal the size of datePickerFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " + 1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 2
        0x59s
        0x79s
        0x4ds
        0x6ds
        0x44s
        0x64s
    .end array-data
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    new-instance p1, LA4/f;

    const/16 p2, 0x15

    invoke-direct {p1, p2, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    new-instance p1, LA4/f;

    const/16 p2, 0x15

    invoke-direct {p1, p2, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
