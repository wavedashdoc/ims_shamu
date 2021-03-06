.class public Lorg/codeaurora/ims/conference/ConfInfo;
.super Ljava/lang/Object;
.source "ConfInfo.java"


# static fields
.field public static final INDEX_DISPLAY_TEXT:I = 0x1

.field public static final INDEX_ENDPOINT:I = 0x2

.field public static final INDEX_STATUS:I = 0x3

.field public static final INDEX_USER:I = 0x0

.field public static final MAX_CONF_PARTICIPANT_INFO:I = 0x4

.field private static sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;


# instance fields
.field public LOGTAG:Ljava/lang/String;

.field private final STATE_DELETE:I

.field private final STATE_FULL:I

.field private final STATE_PARTIAL:I

.field private final VERSION_EQUAL:I

.field private final VERSION_GREATER:I

.field private final VERSION_INVALID:I

.field private final VERSION_lESSER:I

.field public allowedPartial:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field public mCachedElement:Lorg/codeaurora/ims/conference/Element;

.field public mNewElement:Lorg/codeaurora/ims/conference/Element;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_INVALID:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_EQUAL:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_GREATER:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->VERSION_lESSER:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->STATE_FULL:I

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->STATE_PARTIAL:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->STATE_DELETE:I

    .line 39
    const-string/jumbo v0, "ConfInfo"

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->LOGTAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    .line 41
    iput-boolean v1, p0, Lorg/codeaurora/ims/conference/ConfInfo;->debug:Z

    .line 55
    new-instance v0, Lorg/codeaurora/ims/conference/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    .line 56
    invoke-direct {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->setMapAttributeWithDefaultValue()V

    .line 57
    new-instance v0, Lorg/codeaurora/ims/conference/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    .line 58
    invoke-direct {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->preparePartialList()V

    .line 54
    return-void
.end method

.method private UpdateConfDesElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 554
    sget-object v0, Lorg/codeaurora/ims/conference/ConfInfo;->sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/SAXXMLHandler;->getConferenceDescElement()Lorg/codeaurora/ims/conference/Element;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private UpdateConfInfoElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 550
    sget-object v0, Lorg/codeaurora/ims/conference/ConfInfo;->sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/conference/Element;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 492
    const-string/jumbo v1, "full"

    .line 494
    .local v1, "resultantState":Ljava/lang/String;
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "elementState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 496
    move-object v1, v0

    .line 498
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 499
    return-object v1
.end method

.method private compareElements(Lorg/codeaurora/ims/conference/Element;)Z
    .locals 4
    .param p1, "lhs"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "index":I
    const/4 v1, 0x0

    .line 560
    .local v1, "lindex":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/conference/Element;->getParentTag()Ljava/lang/String;

    move-result-object v2

    .line 562
    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getParentTag()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 560
    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 572
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    .line 573
    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v3

    .line 572
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const/4 v2, 0x1

    return v2

    .line 577
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->debug:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method

.method private dumpstate()V
    .locals 7

    .prologue
    .line 91
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz v4, :cond_2

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 94
    .local v2, "length":I
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sublist length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SubElement list Element at Index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 98
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 99
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 100
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 101
    .local v3, "length2":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SubElement List Length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    .local v1, "index2":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SubElement List Length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 104
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "index2":I
    .end local v3    # "length2":I
    :cond_0
    const-string/jumbo v5, "List two is null"

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 112
    .end local v0    # "index":I
    .end local v2    # "length":I
    :cond_2
    const-string/jumbo v5, "List one is null"

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 114
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->getUserUriList()[Ljava/lang/String;

    .line 90
    return-void
.end method

.method private getConfStateValue()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method private getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Ljava/lang/String;)I
    .locals 5
    .param p2, "source"    # Lorg/codeaurora/ims/conference/Element;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Lorg/codeaurora/ims/conference/Element;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 223
    .local v1, "length":I
    const/4 v2, -0x1

    .line 224
    .local v2, "ret":I
    invoke-virtual {p2, p3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v4, p3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    move v2, v0

    .line 233
    .end local v0    # "i":I
    :cond_0
    return v2

    .line 226
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    const/4 v1, -0x1

    .line 474
    .local v1, "iIndex":I
    if-eqz p1, :cond_0

    .line 475
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 476
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 477
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    move v1, v0

    .line 483
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_0
    return v1

    .line 476
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getKey(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    const-string/jumbo v2, "endpoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 259
    if-nez v2, :cond_0

    .line 261
    const-string/jumbo v2, "entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 259
    if-eqz v2, :cond_1

    .line 262
    :cond_0
    const-string/jumbo v0, "entity"

    .line 270
    .end local v0    # "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 263
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    const-string/jumbo v0, "id"

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 265
    .local v0, "ret":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "sidebars-by-ref"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    const-string/jumbo v0, "uri"

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 268
    .local v0, "ret":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, " :Is not supported"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getParticipantInfoFromElement(Lorg/codeaurora/ims/conference/Element;)[Ljava/lang/String;
    .locals 5
    .param p1, "e"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 192
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    .line 195
    .local v1, "participantInfo":[Ljava/lang/String;
    const-string/jumbo v3, "entity"

    invoke-virtual {p1, v3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 198
    const-string/jumbo v3, "display-text"

    invoke-virtual {p1, v3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 200
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "userSubElements":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subElement["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 203
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "endpoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    .line 206
    const-string/jumbo v4, "entity"

    .line 205
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 208
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/conference/Element;

    .line 209
    const-string/jumbo v4, "status"

    .line 208
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return-object v1
.end method

.method private handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .local p2, "mOldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    const/4 v10, 0x0

    .line 391
    const/4 v6, 0x0

    .line 392
    .local v6, "newSubElement":Lorg/codeaurora/ims/conference/Element;
    const/4 v1, -0x1

    .line 394
    .local v1, "iIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 395
    .local v5, "newListLength":I
    const-string/jumbo v8, "updateNotification : HandlePartialNotification"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x0

    .end local v6    # "newSubElement":Lorg/codeaurora/ims/conference/Element;
    .local v0, "elementIndex":I
    :goto_0
    if-ge v0, v5, :cond_5

    .line 397
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/conference/Element;

    .line 398
    .local v6, "newSubElement":Lorg/codeaurora/ims/conference/Element;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New List :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "at index : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 399
    const-string/jumbo v9, "tag name:"

    .line 398
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 400
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 398
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Old Element List :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 403
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/conference/ConfInfo;->getKey(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 405
    const-string/jumbo v8, "Key is not null"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, p2, v6, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Ljava/lang/String;)I

    move-result v1

    .line 408
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNotification : HandlePartialNotification elementIndex : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Old element index Index value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p2, v10, v6, v1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    .line 396
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 415
    .restart local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "key is null"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 416
    invoke-direct {p0, p2, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 418
    if-gez v1, :cond_2

    .line 419
    const-string/jumbo v8, "element is not found after doing Index on key match"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    .line 422
    .local v7, "tempelement":Lorg/codeaurora/ims/conference/Element;
    invoke-virtual {v7}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v4

    .line 423
    .local v4, "mOldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v3

    .line 424
    .local v3, "mNewList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 425
    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/conference/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 429
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "mNewList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v4    # "mOldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    :cond_3
    const-string/jumbo v8, "Tag not valid for Partial Notification"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-direct {p0, p2, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 432
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newSubElement Tag Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 433
    if-ltz v1, :cond_4

    .line 434
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    .line 435
    .restart local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    invoke-direct {p0, p2, v7, v6, v1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    goto :goto_1

    .line 438
    .end local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    :cond_4
    const-string/jumbo v8, "May be tags are not at same level checking it by reindexing one level up"

    invoke-direct {p0, v8}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 439
    if-eqz p2, :cond_0

    .line 440
    invoke-direct {p0, p2, v6}, Lorg/codeaurora/ims/conference/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;)Ljava/util/List;

    .line 441
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    .line 442
    .restart local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    invoke-direct {p0, p2, v7, v6, v1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    goto/16 :goto_1

    .line 390
    .end local v6    # "newSubElement":Lorg/codeaurora/ims/conference/Element;
    .end local v7    # "tempelement":Lorg/codeaurora/ims/conference/Element;
    :cond_5
    return-void
.end method

.method private isPartialAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tagname"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method private preparePartialList()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "conference-info"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "endpoint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "sidebars-by-val"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "sidebars-by-ref"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method private reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;)Ljava/util/List;
    .locals 4
    .param p2, "newSubElement"    # Lorg/codeaurora/ims/conference/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Lorg/codeaurora/ims/conference/Element;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "mOldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz p1, :cond_1

    .line 457
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 458
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/conference/Element;

    .line 459
    .local v1, "temp":Lorg/codeaurora/ims/conference/Element;
    invoke-virtual {v1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Old Element List item at Index["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 461
    invoke-virtual {v1}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object p1

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "index":I
    .end local v1    # "temp":Lorg/codeaurora/ims/conference/Element;
    :cond_1
    const-string/jumbo v2, "old element list is null"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 469
    :cond_2
    return-object p1
.end method

.method private setMapAttributeWithDefaultValue()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->setMapAttribute()V

    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "NotApplicable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/conference/SAXXMLHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/codeaurora/ims/conference/SAXXMLHandler;

    .prologue
    .line 67
    sput-object p0, Lorg/codeaurora/ims/conference/ConfInfo;->sHandler:Lorg/codeaurora/ims/conference/SAXXMLHandler;

    .line 66
    return-void
.end method

.method private updateAttributeList(Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;)V
    .locals 5
    .param p1, "cachedElement"    # Lorg/codeaurora/ims/conference/Element;
    .param p2, "newElement"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 242
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 244
    .local v3, "newElementTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 245
    .local v2, "mappedKeys":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 246
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {p1, v1, v4}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V
    .locals 11
    .param p2, "oldElement"    # Lorg/codeaurora/ims/conference/Element;
    .param p3, "newElement"    # Lorg/codeaurora/ims/conference/Element;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/conference/Element;",
            ">;",
            "Lorg/codeaurora/ims/conference/Element;",
            "Lorg/codeaurora/ims/conference/Element;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "UpdateNotification args OldList: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", OldElement: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 304
    const-string/jumbo v10, ", NewElement: "

    .line 303
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 304
    const-string/jumbo v10, ", index = "

    .line 303
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCachedElement element: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 307
    :try_start_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/conference/ConfInfo;->checkElementState(Lorg/codeaurora/ims/conference/Element;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "latestState":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, "newTagName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 310
    .local v8, "oldTagName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 312
    .end local v8    # "oldTagName":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Old Element Tag name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New Element Tag name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v9, "full"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 318
    if-nez p1, :cond_2

    .line 319
    const-string/jumbo v9, "Root Element is replced with Full state"

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 320
    iput-object p3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    .end local v4    # "latestState":Ljava/lang/String;
    .end local v6    # "newTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v9, "updateNotification : comming out"

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 302
    return-void

    .line 322
    .restart local v4    # "latestState":Ljava/lang/String;
    .restart local v6    # "newTagName":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_1

    .line 324
    if-gez p4, :cond_3

    .line 325
    :try_start_1
    const-string/jumbo v9, "adding new Element with Full state"

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 326
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 374
    .end local v4    # "latestState":Ljava/lang/String;
    .end local v6    # "newTagName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 375
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "Null Pointer Exception in UpdateNotification"

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    .restart local v4    # "latestState":Ljava/lang/String;
    .restart local v6    # "newTagName":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "replacing Element with Full state with parentTag"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 329
    invoke-virtual {p3}, Lorg/codeaurora/ims/conference/Element;->getParentTag()Ljava/lang/String;

    move-result-object v10

    .line 328
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 329
    const-string/jumbo v10, " Index :"

    .line 328
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 330
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 377
    .end local v4    # "latestState":Ljava/lang/String;
    .end local v6    # "newTagName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 378
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "Indexout of bound exception in UpdateNotification"

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "latestState":Ljava/lang/String;
    .restart local v6    # "newTagName":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string/jumbo v9, "partial"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 336
    const-string/jumbo v9, "updateNotification: partial state"

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 339
    :try_start_4
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/conference/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 340
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Partial Notification state is supported to this element"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p3}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    .line 343
    .local v5, "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    if-eqz p1, :cond_5

    .line 349
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/codeaurora/ims/conference/Element;

    move-object p2, v0

    .line 352
    :cond_5
    invoke-virtual {p2}, Lorg/codeaurora/ims/conference/Element;->getSubElementList()Ljava/util/List;

    move-result-object v7

    .line 353
    .local v7, "oldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Old Element Tag name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, p2, p3}, Lorg/codeaurora/ims/conference/ConfInfo;->updateAttributeList(Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;)V

    .line 355
    if-nez v7, :cond_6

    .line 357
    invoke-direct {p0, v7, p3}, Lorg/codeaurora/ims/conference/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;)Ljava/util/List;

    move-result-object v7

    .line 359
    :cond_6
    invoke-direct {p0, v5, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 362
    .end local v5    # "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v7    # "oldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/conference/Element;>;"
    :catch_2
    move-exception v1

    .line 363
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v9, "Exception in handlePatialNotification "

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 366
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v9, "delete"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 367
    const-string/jumbo v9, "updateNotification Deleting Element"

    invoke-direct {p0, v9}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v9, "conference-info"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 369
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 371
    :cond_8
    iget-object v9, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v9}, Lorg/codeaurora/ims/conference/Element;->ClearAll()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public UpdateConfInfoAllElement(Lorg/codeaurora/ims/conference/Element;)V
    .locals 0
    .param p1, "element"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 546
    iput-object p1, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    .line 545
    return-void
.end method

.method public UpdateConfState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/conference/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public UpdateConfState(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "state"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return-void
.end method

.method public UpdateLocalVersionNumber(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_0
    const-string/jumbo v0, "version"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method public clearAndSetDefault()V
    .locals 0

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->dispose()V

    .line 590
    invoke-direct {p0}, Lorg/codeaurora/ims/conference/ConfInfo;->setMapAttributeWithDefaultValue()V

    .line 588
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->ClearAll()V

    .line 583
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/conference/Element;->clearMatchedElementsList()V

    .line 584
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/Element;->ClearAll()V

    .line 580
    :cond_1
    return-void
.end method

.method public getConfUriList()Landroid/telephony/ims/ImsConferenceState;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 151
    iget-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v7, :cond_3

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mCachedElement reference "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 153
    iget-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    const-string/jumbo v8, "version"

    invoke-virtual {v7, v8}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "version":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "version string is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 155
    if-eqz v6, :cond_0

    const-string/jumbo v7, "NotApplicable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    .end local v6    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 157
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/codeaurora/ims/conference/Element;->clearMatchedElementsList()V

    .line 159
    const-string/jumbo v7, "user"

    const-string/jumbo v8, "users"

    iget-object v9, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    .line 158
    invoke-static {v7, v8, v9}, Lorg/codeaurora/ims/conference/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/conference/Element;)Ljava/util/ArrayList;

    move-result-object v5

    .line 160
    .local v5, "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 161
    .local v2, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "userlist length in getuserUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 163
    .local v3, "p":Landroid/os/Parcel;
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 165
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/conference/Element;

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->getParticipantInfoFromElement(Lorg/codeaurora/ims/conference/Element;)[Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "participantInfo":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getConfUriList["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] -> userEntity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 168
    aget-object v8, v4, v10

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 169
    const-string/jumbo v8, ", Display Text="

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 169
    const/4 v8, 0x1

    aget-object v8, v4, v8

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 170
    const-string/jumbo v8, ", endPoint="

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 170
    aget-object v8, v4, v11

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 171
    const-string/jumbo v8, ", status="

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 171
    aget-object v8, v4, v12

    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 173
    aget-object v7, v4, v10

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v7, "user"

    aget-object v8, v4, v10

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v7, "endpoint"

    aget-object v8, v4, v11

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v7, "status"

    aget-object v8, v4, v12

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, v0, v10}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "participantInfo":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 183
    sget-object v7, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ims/ImsConferenceState;

    return-object v7

    .line 186
    .end local v1    # "index":I
    .end local v2    # "length":I
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v6    # "version":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "conf_version not valid"

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getState(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string/jumbo v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 533
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserUriList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "userUri":[Ljava/lang/String;
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    if-eqz v5, :cond_2

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCachedElement reference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    const-string/jumbo v6, "version"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "version":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version string is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 126
    if-eqz v4, :cond_0

    .line 127
    const-string/jumbo v5, "NotApplicable"

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    .end local v2    # "userUri":[Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 129
    .restart local v2    # "userUri":[Ljava/lang/String;
    .restart local v4    # "version":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/codeaurora/ims/conference/Element;->clearMatchedElementsList()V

    .line 131
    const-string/jumbo v5, "user"

    const-string/jumbo v6, "users"

    iget-object v7, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    .line 130
    invoke-static {v5, v6, v7}, Lorg/codeaurora/ims/conference/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/conference/Element;)Ljava/util/ArrayList;

    move-result-object v3

    .line 132
    .local v3, "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 133
    .local v1, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userlist length in getuserUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 134
    new-array v2, v1, [Ljava/lang/String;

    .line 135
    .local v2, "userUri":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 136
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/conference/Element;

    .line 137
    const-string/jumbo v6, "entity"

    .line 136
    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inside getUser URI list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    .end local v0    # "index":I
    .end local v1    # "length":I
    .end local v3    # "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/conference/Element;>;"
    .end local v4    # "version":Ljava/lang/String;
    .local v2, "userUri":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "conf_version not valid"

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateConfXmlBytes([B)V
    .locals 6
    .param p1, "confxml"    # [B

    .prologue
    .line 71
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 72
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/codeaurora/ims/conference/SAXXMLParser;->getSAXXMLParser()Lorg/codeaurora/ims/conference/SAXXMLParser;

    move-result-object v0

    .line 73
    .local v0, "confparser":Lorg/codeaurora/ims/conference/SAXXMLParser;
    invoke-static {v1}, Lorg/codeaurora/ims/conference/SAXXMLParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/conference/Element;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    .line 74
    const-string/jumbo v2, "*************New Notification*****************"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/conference/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mNewElement:Lorg/codeaurora/ims/conference/Element;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, v4, v2, v3, v5}, Lorg/codeaurora/ims/conference/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/conference/Element;Lorg/codeaurora/ims/conference/Element;I)V

    .line 70
    return-void
.end method

.method public validateConfInfoVersion(Lorg/codeaurora/ims/conference/Element;)I
    .locals 4
    .param p1, "newmessage"    # Lorg/codeaurora/ims/conference/Element;

    .prologue
    .line 503
    iget-object v2, p0, Lorg/codeaurora/ims/conference/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/conference/Element;

    .line 504
    const-string/jumbo v3, "version"

    .line 503
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 505
    .local v1, "oldversion":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/conference/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    const-string/jumbo v2, "version"

    .line 506
    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/conference/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, "newversion":I
    if-ne v1, v0, :cond_0

    .line 509
    const/4 v2, 0x1

    return v2

    .line 510
    :cond_0
    if-le v1, v0, :cond_1

    .line 511
    const/4 v2, 0x2

    return v2

    .line 512
    :cond_1
    if-ge v1, v0, :cond_2

    .line 513
    const/4 v2, 0x3

    return v2

    .line 516
    .end local v0    # "newversion":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
