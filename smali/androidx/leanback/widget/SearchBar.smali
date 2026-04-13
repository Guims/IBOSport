.class public Landroidx/leanback/widget/SearchBar;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final synthetic M:I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public G:Landroid/speech/SpeechRecognizer;

.field public H:Z

.field public I:Landroid/media/SoundPool;

.field public final J:Landroid/util/SparseIntArray;

.field public K:Z

.field public final L:Landroid/content/Context;

.field public b:Landroidx/leanback/widget/SearchEditText;

.field public q:Landroidx/leanback/widget/SpeechOrbView;

.field public r:Landroid/widget/ImageView;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Landroid/graphics/drawable/Drawable;

.field public final w:Landroid/os/Handler;

.field public final x:Landroid/view/inputmethod/InputMethodManager;

.field public y:Z

.field public z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SearchBar;->w:Landroid/os/Handler;

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->y:Z

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SearchBar;->J:Landroid/util/SparseIntArray;

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->K:Z

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->L:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e00aa

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070498

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const-string v0, ""

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->s:Ljava/lang/String;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->x:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0600c0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/SearchBar;->B:I

    const v0, 0x7f0600bf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/SearchBar;->A:I

    const v0, 0x7f0c0029

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/SearchBar;->F:I

    const v0, 0x7f0c002a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/SearchBar;->E:I

    const v0, 0x7f0600be

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/SearchBar;->D:I

    const v0, 0x7f0600bd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/SearchBar;->C:I

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->K:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->K:Z

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    new-instance v3, Landroidx/leanback/widget/G;

    invoke-direct {v3, p0}, Landroidx/leanback/widget/G;-><init>(Landroidx/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->H:Z

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "android.permission.RECORD_AUDIO required for search"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->K:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->K:Z

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v1}, Landroidx/leanback/widget/SpeechOrbView;->c()V

    iget-boolean v1, p0, Landroidx/leanback/widget/SearchBar;->H:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->H:Z

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1300ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->u:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1300b1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->u:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1300b0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1300af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->t:Ljava/lang/String;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final d(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->z:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->F:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->D:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    iget v1, p0, Landroidx/leanback/widget/SearchBar;->B:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->z:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->E:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->A:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->C:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->c()V

    return-void
.end method

.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->I:Landroid/media/SoundPool;

    const v0, 0x7f120006

    const v1, 0x7f120008

    const v4, 0x7f120005

    const v5, 0x7f120007

    filled-new-array {v4, v5, v0, v1}, [I

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    if-ge v3, v1, :cond_0

    aget v1, v0, v3

    iget-object v4, p0, Landroidx/leanback/widget/SearchBar;->I:Landroid/media/SoundPool;

    iget-object v5, p0, Landroidx/leanback/widget/SearchBar;->L:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/SearchBar;->J:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->b()V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->I:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0238

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->z:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0b023b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SearchEditText;

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    new-instance v1, Landroidx/leanback/widget/B;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/leanback/widget/B;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroidx/leanback/widget/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/C;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    new-instance v2, Landroidx/leanback/widget/D;

    invoke-direct {v2, p0, v0}, Landroidx/leanback/widget/D;-><init>(Landroidx/leanback/widget/SearchBar;Landroidx/leanback/widget/C;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    new-instance v1, LL2/o;

    invoke-direct {v1, p0}, LL2/o;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroidx/leanback/widget/J;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    new-instance v1, Landroidx/leanback/widget/E;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/E;-><init>(Landroidx/leanback/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    const-string v1, "escapeNorth,voiceDismiss"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const v0, 0x7f0b0239

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SpeechOrbView;

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    new-instance v1, Landroidx/leanback/widget/F;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/F;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    new-instance v1, Landroidx/leanback/widget/B;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/leanback/widget/B;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchBar;->d(Z)V

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->c()V

    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->v:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->r:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->r:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusDownId(I)V

    return-void
.end method

.method public setPermissionListener(Landroidx/leanback/widget/I;)V
    .locals 0

    return-void
.end method

.method public setSearchAffordanceColors(Landroidx/leanback/widget/L;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setNotListeningOrbColors(Landroidx/leanback/widget/L;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColorsInListening(Landroidx/leanback/widget/L;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setListeningOrbColors(Landroidx/leanback/widget/L;)V

    :cond_0
    return-void
.end method

.method public setSearchBarListener(Landroidx/leanback/widget/H;)V
    .locals 0

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->b()V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchBar;->setSearchQueryInternal(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchQueryInternal(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->s:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->s:Ljava/lang/String;

    return-void
.end method

.method public setSpeechRecognitionCallback(Landroidx/leanback/widget/O;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->b()V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->H:Z

    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->G:Landroid/speech/SpeechRecognizer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->u:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->c()V

    return-void
.end method
